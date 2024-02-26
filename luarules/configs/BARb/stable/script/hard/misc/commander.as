#include "../manager/factory.as"


namespace Commander {

string armada_commander("armada_commander");
string cortex_commander("cortex_commander");

}


namespace Opener {

class SO {  // SOrder
	SO(Type r, uint c = 1) {
		role = r;
		count = c;
	}
	SO() {}
	Type role;
	uint count;
}

class SQueue {
	SQueue(float w, array<SO>& in o) {
		weight = w;
		orders = o;
	}
	SQueue() {}
	float weight;
	array<SO> orders;
}

class SOpener {
	SOpener(dictionary f, array<SO>& in d) {
		factory = f;
		def = d;
	}
	dictionary factory;
	array<SO> def;
}

dictionary@ GetOpenInfo()
{
	return dictionary = {
		{Commander::armada_commander, SOpener({
			{Factory::armada_botlab, array<SQueue> = {
				//raider
				SQueue(0.4f, {SO(RT::BUILDER), SO(RT::SCOUT, 2), SO(RT::RAIDER, 2), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 5), SO(RT::BUILDER), SO(RT::RAIDER)}),
				//builder
				SQueue(0.3f, {SO(RT::BUILDER), SO(RT::SCOUT), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER, 3), SO(RT::RAIDER, 3), SO(RT::SUPPORT), SO(RT::RAIDER)}),
				//standard
				SQueue(0.3f, {SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::RAIDER, 3), SO(RT::BUILDER), SO(RT::RAIDER, 2), SO(RT::BUILDER)})
			}},
			{Factory::armada_vehicleplant, array<SQueue> = {
				//standard
				SQueue(0.4f, {SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 3), SO(RT::BUILDER), SO(RT::RAIDER)}),
				//early scout push
				SQueue(0.3f, {SO(RT::SCOUT, 2), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER)}),
				SQueue(0.3f, {SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER)})
			}},
			{Factory::armada_advancedbotlab, array<SQueue> = {
				SQueue(1.0f, {SO(RT::BUILDER2), SO(RT::RIOT), SO(RT::ASSAULT, 2), SO(RT::BUILDER2), SO(RT::ASSAULT), SO(RT::SKIRM), SO(RT::BUILDER2), SO(RT::AHA, 2), SO(RT::BUILDER2), SO(RT::HEAVY), SO(RT::BUILDER2)})
			}},
			{Factory::armada_advancedvehicleplant, array<SQueue> = {
				SQueue(0.4f, {SO(RT::BUILDER2), SO(RT::SKIRM, 2), SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2), SO(RT::AHA), SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::AHA), SO(RT::BUILDER2)}),
				SQueue(0.6f, {SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2), SO(RT::SKIRM, 2)})
			}},
			{Factory::armada_experimentalgantry, array<SQueue> = {
				SQueue(1.0f, {SO(RT::RAIDER), SO(RT::RIOT, 2), SO(RT::ARTY, 2), SO(RT::SUPER)})
			}},
			{Factory::armada_shipyard, array<SQueue> = {
				SQueue(0.3f, {SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::SUB), SO(RT::SKIRM)})
			}},
			{Factory::armada_advancedshipyard, array<SQueue> = {
				SQueue(0.5f, {SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2, 2)})
			}}
			}, {SO(RT::BUILDER), SO(RT::RAIDER, 3), SO(RT::BUILDER), SO(RT::RAIDER)})
		},
		{Commander::cortex_commander, SOpener({
			{Factory::cortex_botlab, array<SQueue> = {
				SQueue(0.3f, {SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 4), SO(RT::BUILDER), SO(RT::RAIDER, 2)}),
				SQueue(0.3f, {SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 2), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 2), SO(RT::RIOT), SO(RT::BUILDER), SO(RT::RAIDER, 2)}),
				SQueue(0.3f, {SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER)})
			}},
			{Factory::cortex_vehicleplant, array<SQueue> = {
				//standard
				SQueue(0.4f, {SO(RT::SCOUT), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 2), SO(RT::BUILDER), SO(RT::RAIDER, 2), SO(RT::BUILDER), SO(RT::RAIDER, 2)}),
				// raider serial production
				SQueue(0.3f, {SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER, 5), SO(RT::BUILDER)}),
				// scout start
				//SQueue(0.2f, {SO(RT::SCOUT, 4), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER)}),
				//defensive eco start
				SQueue(0.2f, {SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::BUILDER), SO(RT::RAIDER)})
			}},
			{Factory::cortex_advancedbotlab, array<SQueue> = {
				SQueue(1.0f, {SO(RT::BUILDER2), SO(RT::RAIDER, 3), SO(RT::BUILDER2), SO(RT::RAIDER, 3), SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::HEAVY), SO(RT::BUILDER2), SO(RT::ASSAULT, 2), SO(RT::BUILDER2)})
			}},
			{Factory::cortex_advancedvehicleplant, array<SQueue> = {
				SQueue(1.0f, {SO(RT::BUILDER2), SO(RT::SKIRM, 2), SO(RT::BUILDER2), SO(RT::ASSAULT), SO(RT::BUILDER2),SO(RT::HEAVY), SO(RT::BUILDER2, 2)})
			}},
			{Factory::cortex_experimentalgantry, array<SQueue> = {
				SQueue(1.0f, {SO(RT::RAIDER), SO(RT::ASSAULT), SO(RT::ARTY, 2)})
			}},
			{Factory::cortex_shipyard, array<SQueue> = {
				SQueue(0.3f, {SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::SCOUT), SO(RT::BUILDER), SO(RT::SUB), SO(RT::SKIRM)})
			}},
			{Factory::cortex_advancedshipyard, array<SQueue> = {
				SQueue(0.5f, {SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2), SO(RT::SKIRM), SO(RT::BUILDER2, 2)})
			}}
			}, {SO(RT::BUILDER, 2), SO(RT::SKIRM, 2), SO(RT::BUILDER), SO(RT::RAIDER), SO(RT::SUPPORT), SO(RT::RAIDER)})
		}
	};
}

const array<SO>@ GetOpener(const CCircuitDef@ facDef)
{
	dictionary@ openInfo = GetOpenInfo();
	const CCircuitDef@ commChoice = aiSetupMgr.commChoice;
	const string commName = commChoice.GetName();

	SOpener@ open;  // null
	const array<string>@ keys = openInfo.getKeys();
	for (uint i = 0, l = keys.length(); i < l; ++i)
		if (commName.findFirst(keys[i]) >= 0) {
			@open = cast<SOpener>(openInfo[keys[i]]);
			break;
		}

	if (open is null)
		return null;

	const string facName = facDef.GetName();
	array<SQueue>@ queues;
	if (!open.factory.get(facName, @queues))
		return open.def;

	array<float> weights;
	for (uint i = 0, l = queues.length(); i < l; ++i)
		weights.insertLast(queues[i].weight);

	int choice = AiDice(weights);
	if (choice < 0)
		return open.def;

	return queues[choice].orders;
}

}  // namespace Opener
