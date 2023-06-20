RuleSet: Translation(path, language, translation)
* {path}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* {path}.extension[=].extension[0].url = "lang"
* {path}.extension[=].extension[0].valueCode = #{language}
* {path}.extension[=].extension[1].url = "content"
* {path}.extension[=].extension[1].valueString = "{translation}"

RuleSet: MaelstromTaxonomiesParent(code, display-string, fr, display-translation, definition, fr, definition-translation)
* concept[+].code = #{code}
* concept[=].display = {display-string}
* concept[=].designation.language = #{fr}
* concept[=].designation.value = {display-translation}
* concept[=].definition = {definition}
* concept[=].definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].definition.extension[=].extension[0].url = "lang"
* concept[=].definition.extension[=].extension[0].valueCode = #{fr}
* concept[=].definition.extension[=].extension[1].url = "content"
* concept[=].definition.extension[=].extension[1].valueString = {definition-translation}

RuleSet: MaelstromTaxonomiesChild(code, display-string, fr, display-translation, definition, fr, definition-translation)
* concept[=].concept[+].code = #{code}
* concept[=].concept[=].display = {display-string}
* concept[=].concept[=].designation.language = #{fr}
* concept[=].concept[=].designation.value = {display-translation}
* concept[=].concept[=].definition = {definition}
* concept[=].concept[=].definition.extension[+].url = "http://hl7.org/fhir/StructureDefinition/translation"
* concept[=].concept[=].definition.extension[=].extension[0].url = "lang"
* concept[=].concept[=].definition.extension[=].extension[0].valueCode = #{fr}
* concept[=].concept[=].definition.extension[=].extension[1].url = "content"
* concept[=].concept[=].definition.extension[=].extension[1].valueString = {definition-translation}