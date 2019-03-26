/*
 * generated by Xtext 2.16.0
 */
package dk.sdu.mdsd.validation

import dk.sdu.mdsd.speechrecognition.AgentValue
import dk.sdu.mdsd.speechrecognition.SpeechrecognitionPackage
import org.eclipse.xtext.validation.Check
import dk.sdu.mdsd.speechrecognition.Agent
import java.util.ArrayList

/**
 * This class contains custom validation rules. 
 *
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class SpeechrecognitionValidator extends AbstractSpeechrecognitionValidator {
	
	public static val INVALID_NAME = 'invalidName'
	public static val MISSING_AGENT_PARENT = 'missingAgentParent'
	public static val MISSING_AGENT_DISPLAYNAME = 'missingAgentDisplayName'
	public static val MISSING_AGENT_DEFAULTLANGUAGECODE = 'missingAgentDefaultLanguageCode'
	public static val MISSING_AGENT_TIMEZONE = 'missingAgentTimezone'
	public static val MISSING_AGENT_ENABLELOGGING = 'missingAgentEnableLogging'
	ArrayList<String> agentValues = new ArrayList<String>();
	
	@Check
	def checkIfAgentParamsAreMissing(Agent agent) {
		for(AgentValue v : agent.value) {
			agentValues.add(v.aa)
		}
		
		if (!agentValues.contains('parent')) {
		error('You must define the parent variable', 
				SpeechrecognitionPackage.Literals.AGENT__VALUE,
				MISSING_AGENT_PARENT)
		} else if (!agentValues.contains('displayName')) {
			error('You must define the displayName variable', 
					SpeechrecognitionPackage.Literals.AGENT__VALUE,
					MISSING_AGENT_DISPLAYNAME)
		} else if (!agentValues.contains('defaultLanguageCode')) {
			error('You must define the defaultLanguageCode variable', 
					SpeechrecognitionPackage.Literals.AGENT__VALUE,
					MISSING_AGENT_DEFAULTLANGUAGECODE)
		} else if (!agentValues.contains('timezone')) {
			error('You must define the timezone variable', 
					SpeechrecognitionPackage.Literals.AGENT__VALUE,
					MISSING_AGENT_TIMEZONE)
		} else if (!agentValues.contains('enableLogging')) {
			error('You must define the enableLogging variable', 
					SpeechrecognitionPackage.Literals.AGENT__VALUE,
					MISSING_AGENT_ENABLELOGGING)
		}
		agentValues.clear
		for(AgentValue v : agent.value) {
			System.out.println(v.value.bool)
		}
	}
	
	
	@Check
	def checkIfParamsAreAllowed(AgentValue agentVal) {
		if(agentVal.aa === "parent" && (agentVal.value.bool === 'true' || agentVal.value.bool === 'false')) {
			error('Type mismatch: parent cannot be set to ' +agentVal.value.bool, 
				SpeechrecognitionPackage.Literals.AGENT__VALUE,
				MISSING_AGENT_PARENT)
		}
	}
}
