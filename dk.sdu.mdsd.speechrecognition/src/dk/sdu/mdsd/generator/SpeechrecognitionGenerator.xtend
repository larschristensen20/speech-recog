/*
 * generated by Xtext 2.16.0
 */
package dk.sdu.mdsd.generator
//import org.json.simple.JSONObject
import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import dk.sdu.mdsd.speechrecognition.Agent
import dk.sdu.mdsd.speechrecognition.AgentValue
import dk.sdu.mdsd.speechrecognition.ValueName
import dk.sdu.mdsd.speechrecognition.Intent
import dk.sdu.mdsd.speechrecognition.EntityType

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class SpeechrecognitionGenerator extends AbstractGenerator {
	
	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
	/* 	resource.allContents.filter(Agent).forEach[generateAgentJSON]
		resource.allContents.filter(Intent).forEach[generateIntentJSON]
		resource.allContents.filter(EntityType).forEach[generateEntityTypeJSON]*/
	}
	/* 
	def generateAgentJSON(Agent agent) {
		
		var obj = new JSONObject()
		var key = new String()
		var value = new Object()
		
		for(m : agent.value) {
			val rawKey = m.value
			key = m.value.toString()
			if(m.value.bool === null) {
				if(rawKey instanceof ValueName) {
					println((rawKey as ValueName).name)
					//value = (rawKey as ValueName).name
				}
			} else {
				println(m.value.bool)
				//value = Boolean.parseBoolean(m.value.bool)
			}
			
		}
		
		//print(obj.toString)
	}
	
	def generateIntentJSON() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}
	
	def generateEntityTypeJSON() {
		throw new UnsupportedOperationException("TODO: auto-generated method stub")
	}*/
}
