# IntentsUI Bug

This sample project is used to highlight an issue with Intents UI where 'failure' responses do not cause the IntentsUI to be displayed. This bug appears on both real devices and the simulator.

I'm not sure if this is the expected behavior or not; however I have seen projects that don't have this issue, leading me to believe that (1) it's not a bug and (2) there's something extra that needs to be done in order to support this functionality. What that is, I have been unable (and believe me, I've tried) to find it online.

## Steps to Reproduce

1. First run the main app target. This will donate an example intent.
2. In *ExampleIntentHandler.swift*, you can change the responses returned in the `confirm` and `handle` methods to observe the following behavior:
   * Any response not marked 'success' in *Intents.intentdefinition* will cause the default Siri UI to be displayed, and no code in the IntentsUI extension will be run
   * This goes for both built-in (i.e. `failure`) responses as well as custom responses
   * Responses that are not failures––`success`, `ready`, etc––will cause the IntentsUI extension to be displayed correctly