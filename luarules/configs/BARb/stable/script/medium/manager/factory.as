#include "../../define.as"
#include "../../unit.as"
#include "../../task.as"
#include "../misc/commander.as"


namespace Factory {

string armada_botlab ("armada_botlab");
string armada_advancedbotlab("armada_advancedbotlab");
string armada_advancedvehicleplant ("armada_advancedvehicleplant");
string armada_advancedshipyard ("armada_advancedshipyard");
string armada_aircraftplant  ("armada_aircraftplant");
string cortex_botlab ("cortex_botlab");
string cortex_advancedbotlab("cortex_advancedbotlab");
string cortex_advancedvehicleplant ("cortex_advancedvehicleplant");
string cortex_advancedshipyard ("cortex_advancedshipyard");
string cortex_aircraftplant  ("cortex_aircraftplant");

int switchInterval = MakeSwitchInterval();
int switchFrame = 0;

IUnitTask@ AiMakeTask(CCircuitUnit@ unit)
{
	return aiFactoryMgr.DefaultMakeTask(unit);
}

void AiTaskAdded(IUnitTask@ task)
{
}

void AiTaskRemoved(IUnitTask@ task, bool done)
{
}

void AiUnitAdded(CCircuitUnit@ unit, Unit::UseAs usage)
{
	if (usage != Unit::UseAs::FACTORY)
		return;

	const CCircuitDef@ facDef = unit.circuitDef;
	const array<Opener::SO>@ opener = Opener::GetOpener(facDef);
	if (opener is null)
		return;

	const AIFloat3 pos = unit.GetPos(ai.frame);
	for (uint i = 0, icount = opener.length(); i < icount; ++i) {
		CCircuitDef@ buildDef = aiFactoryMgr.GetRoleDef(facDef, opener[i].role);
		if ((buildDef is null) || !buildDef.IsAvailable(ai.frame))
			continue;

		Task::Priority priority;
		Task::RecruitType recruit;
		if (opener[i].role == Unit::Role::BUILDER.type) {
			priority = Task::Priority::NORMAL;
			recruit  = Task::RecruitType::BUILDPOWER;
		} else {
			priority = Task::Priority::HIGH;
			recruit  = Task::RecruitType::FIREPOWER;
		}
		for (uint j = 0, jcount = opener[i].count; j < jcount; ++j)
			aiFactoryMgr.Enqueue(TaskS::Recruit(recruit, priority, buildDef, pos, 64.f));
	}
}

void AiUnitRemoved(CCircuitUnit@ unit, Unit::UseAs usage)
{
}

void AiLoad(IStream& istream)
{
}

void AiSave(OStream& ostream)
{
}

/*
 * New factory switch condition; switch event is also based on eco + caretakers.
 */
bool AiIsSwitchTime(int lastSwitchFrame)
{
	return (lastSwitchFrame + switchInterval <= ai.frame);
}

bool AiIsSwitchAllowed(CCircuitDef@ facDef)
{
	if (ai.frame - switchFrame >= switchInterval) {
		switchFrame = ai.frame;
		switchInterval = MakeSwitchInterval();
		return true;
	}
	return false;
}

/* --- Utils --- */

int MakeSwitchInterval()
{
	return AiRandom(900, 1200) * SECOND;
}

}  // namespace Factory
