<p style="padding: 5px; border-radius: 5px; border: 2px solid maroon; background: #ffffe6; width: 65%">
<b>Brief description of this Implementation Guide</b><br>
[Add a brief description of this IG in English]
</p>

<!--  A décommenter lors de la publication -->

<div style="width: 65%">
    <blockquote class="stu-note">
    <p>
    <b>Attention !</b> Cet Implementation Guide n'est pas en version courante. La version courante sera accessible via l'URL canonique suite à la première release : http://interop.esante.gouv.fr/ig/fhir/vs
    </p>
    </blockquote>
</div>



<!--  A décommenter si CI-SIS
<div class="figure">
    <img src="ci-sis-logo.png" alt="CI-SIS" title="Logo du CI-SIS" style="width:100%;">
</div>
-->

### Introduction

Ce guide d'implémentation spécifie une API de diffusion des données étudiées dans le cadre d'une veille sanitaire, via une ressource PlanDefinition.
Cette ressourcePlanDefinition pourra contenir un langage décisionnel (CQL) permettant d'identifier les données d'intérêt sur un document structuré standard (Ex. CDA ou FHIR Document)

<div class="figure" style="width:100%;">
    <p>{% include diagramme.svg %}</p>
</div>

### Dépendances

{% include dependency-table.xhtml %}
