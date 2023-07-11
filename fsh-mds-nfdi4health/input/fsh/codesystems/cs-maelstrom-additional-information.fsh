Instance: Mlstr-additional
InstanceOf: CodeSystem
Title: "Additional information"
Description: "Additional information about the collected variable"
* language = #en
* url = "https://github.com/maelstrom-research/maelstrom-taxonomies/blob/master/AdditionalInformation.yml"
* status = #active
* content = #complete
* publisher = "Maelstrom Research"
* copyright = "CC BY 4.0"
* insert Translation(title, fr, Informations additionnelles)
* insert Translation(description, fr, Informations additionnelles au sujet des variables collectées)

* insert MaelstromTaxonomiesParent(Source, "Source", fr, "Source", "Source refers to the original document/method of data collection.", fr, "Source réfère au document ou à la méthode originale de la collecte de données.")
* insert MaelstromTaxonomiesChild(Questionnaire, "Questionnaire", fr, "Questionnaire", "Information was collected in a questionnaire\, either self-administrated or administrated by an interviewer.", fr, "L'information était collectée par questionnaire\, soit auto-administré\, soit administré par un intervieweur.")
* insert MaelstromTaxonomiesChild(Physical_measure, "Physical measure", fr, "Mesure physique", "Information was measured rather than reported by the participant. It can appear in the questionnaire but it needs to have a clear indication that it was measured to appear in this category.", fr, "L'information était mesurée plutôt que rapportée par le participant. Elle peut apparaître dans un questionnaire mais il faut une indication claire qu'elle provient d'une mesure physique pour apparaître dans cette catégorie.")
* insert MaelstromTaxonomiesChild(Cognitive_measure, "Cognitive measure", fr, "Mesure cognitive", "Information was measured rather than reported by the participant. It can appear in the questionnaire but it needs to have a clear indication that it was measured to appear in this category.", fr, "L'information était mesurée plutôt que rapportée par le participant. Elle peut apparaître dans un questionnaire mais il faut une indication claire qu'elle provient d'une mesure cognitive pour apparaître dans cette catégorie.")
* insert MaelstromTaxonomiesChild(Biosample, "Biosample", fr, "Échantillon biologique", "Information comes from a biological sample collected from the participant.", fr, "L'information provient d'un échantillon biolologique prélevé chez le participant.")
* insert MaelstromTaxonomiesChild(Governmental_databases_registries, "Government databases/registries", fr, "Bases de données gouvernementales/registres", "Information comes from a governmental or hospital database or registry (i.e. death registries\, birth registries\).", fr, "L'information provient d'une base de données gouvernementale ou d'un registre (i.e. registre des décès\, des naissances.\)")
* insert MaelstromTaxonomiesChild(Other, "Other source of information", fr, "Autre source d'information", "Information comes from another source\, not mentioned before.", fr, "L'information provient d'une autre source\, non mentionnée auparavant.")
* insert MaelstromTaxonomiesParent(Target, "Target", fr, "Cible", "Target refers to the person the question is about.", fr, "Cible réfère à la personne ciblée par la question.")
* insert MaelstromTaxonomiesChild(Participant, "Participant", fr, "Participant", "Information requested in the question is about the study participant.", fr, "L'information demandée dans la question est au sujet du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Children, "Children", fr, "Enfants", "Information requested in the question is about the study participant's child/children.", fr, "L'information demandée dans la question est au sujet des enfants du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Parents, "Parents", fr, "Parents", "Information requested in the question is about the study participant's parents.", fr, "L'information demandée dans la question est au sujet des parents du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Grandparents, "Grandparents", fr, "Grand-parents", "Information requested in the question is about the study participant's grandsparents.", fr, "L'information demandée dans la question est au sujet des grand-parents du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Siblings, "Siblings", fr, "Fratrie", "Information requested in the question is about the study participant's siblings.", fr, "L'information demandée dans la question est au sujet des frères et soeurs du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Partner, "Partner", fr, "Partenaire", "Information requested in the question is about the study participant's partner.", fr, "L'information demandée dans la question est au sujet du partenaire du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Interviewer, "Interviewer", fr, "Intervieweur", "Information requested in the question is about the study interviewer.", fr, "L'information demandée dans la question est au sujet de l'intervieweur de l'étude.")
* insert MaelstromTaxonomiesChild(Proxy, "Proxy", fr, "Proxy", "Information requested in the question is about the study participant's proxy.", fr, "L'information demandée dans la question est au sujet du proxy du participant de l'étude.")
* insert MaelstromTaxonomiesChild(Other, "Other target", fr, "Autre cible", "Information requested in the question is about another person (i.e. study participant's friends\).", fr, "L'information demandée dans la question est au sujet d'une autre personne (p.ex. les amis du participant\).")
