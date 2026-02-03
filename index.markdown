---
layout: default
---

<span class="sys-name">Evalet</span> helps practitioners **understand** and **validate** LLM-based evaluations by decomposing outputs into **fragment-level functions**. Instead of opaque scores, see exactly *what* in each output influenced the evaluation and *why*.

<br/>

<div class="sys-img">
  <lottie-player src="/assets/img/teaser.json" background="transparent" speed="1" loop autoplay></lottie-player>
</div>

------

## The Problem

LLM-as-a-Judge approaches produce **holistic scores** (e.g., "3 out of 5") that obscure which specific elements influenced the assessment. To understand a rating, practitioners must manually review outputs and map justifications to specific fragments.

<span class="sys-name">Evalet</span> addresses this through **functional fragmentation**: automatically dissecting outputs into fragments and interpreting the *function* each serves relative to evaluation criteria.

------

## The Interface

The interface has two main components: the **Information Panel** (A) and the **Map Visualization** (B).

<div class="sys-img">
  <lottie-player src="/assets/img/interface.json" background="transparent" speed="1" loop autoplay></lottie-player>
</div>

<br/>

### Browsing Outputs and Evaluations

<p class="text-left" style="vertical-align: top;">
In the <strong>Database Tab</strong> of the <strong>Information Panel</strong>, the user can see each input-output pair as an entry. For each criterion in the entry, the interface shows the output's <strong>holistic score</strong> and a list of <strong>fragment-level functions</strong> extracted from that output. Users can quickly scan which functions were surfaced and how they were rated.
<br/><br/><br/><br/><br/>
Clicking <strong>View Details</strong> reveals the full output with <strong>color-coded fragments</strong>: green for positively rated fragments, orange for negatively rated ones. Clicking on a fragment shows its <strong>function label</strong> and the evaluator's <strong>reasoning</strong> for that rating.
</p>

<div class="img-right">
  <lottie-player src="/assets/img/datarow.json" background="transparent" speed="1" loop autoplay></lottie-player>
</div>

<br/>

### Exploring the Landscape of Functions

The **Map Visualization** projects all fragment-level functions into a **2D space** based on their semantic similarity. Functions that serve similar purposes are clustered together, even if they differ in wording and content. This allows users to:

- **Drill down** from super clusters → base clusters → individual functions
- **Compare** how similar functions were rated across different outputs
- **Identify patterns** in model behavior (e.g., over-reliance on certain strategies)

<div class="sys-img">
  <lottie-player src="/assets/img/mapviz.json" background="transparent" speed="1" loop autoplay></lottie-player>
</div>

<br/>

### Correcting Evaluations

When users find misaligned evaluations, they can add functions to **example sets** (positive, negative, or excluded) to steer future evaluations. After re-running, the **Show Examples** toggle reveals where examples landed in the new function spac,e allowing users to verify that corrections took effect.

{: .sys-img}
![Users can select functions and add them to example sets. After re-evaluation, examples appear as squares in the Map Visualization, showing their effect on nearby functions.](/assets/img/alignment.jpg)

------

## What We Found

In a user study (N=10) comparing <span class="sys-name">Evalet</span> against a baseline system with holistic scores:

- **48% more evaluation misalignments** identified + were rated as significantly **more actionable**
- Users developed **calibrated trust**: selectively relied on evaluations rather than blindly accepting/dismissing them

------

## Example Applications

<span class="sys-name">Evalet</span> surfaces meaningful fragment-level functions across diverse evaluation tasks:

{: .sys-img}
![Fragment-level functions identified across three tasks: (A) Metacognitive Insight in reasoning traces shows self-questioning and uncertainty acknowledgment; (B) Harmlessness in conversations shows a spectrum from refusals to harmful recommendations; (C) Social Intelligence in agent simulations shows rapport building and boundary maintenance.](/assets/img/case_studies.jpg)


<div class="case-columns">
  <div>
    <strong>Metacognitive Insight in Reasoning</strong>: Functions reveal behaviors like <em>self-questioning for knowledge gaps</em>, <em>acknowledgment of limitations</em>, and <em>proactive edge case analysis</em>—shows how reasoning models reflect on their own thought processes.
  </div>
  <div>
    <strong>Harmlessness in Conversations</strong>: Functions span a spectrum from <em>refusals to share harmful information</em> and <em>constructive ethical alternatives</em> to <em>promotion of coercive tactics</em>—allows practitioners to identify where models fall on the safety spectrum.
  </div>
  <div>
    <strong>Social Intelligence in Simulations</strong>: Functions capture positive behaviors like <em>rapport building through mirroring</em>, but also negative ones like <em>self-centered interactions</em>—reveals both strengths and weaknesses in social behavior.
  </div>
</div>

------

## Bibtex
<pre>
@article{kim2025evaletevaluatinglargelanguage,
  title={Evalet: Evaluating Large Language Models by Fragmenting Outputs into Functions},
  author={Tae Soo Kim and Heechan Lee and Yoonjoo Lee and Joseph Seering and Juho Kim},
  year={2025},
  eprint={2509.11206},
  archivePrefix={arXiv},
  primaryClass={cs.HC},
  url={https://arxiv.org/abs/2509.11206},
}
</pre>

------

{: .logos}
[![Logo of KIXLAB](/assets/img/kixlab_logo.png)](https://kixlab.org)
[![Logo of KAIST](/assets/img/kaist_logo.png)](https://kaist.ac.kr)

{: .center .acknowledgement}
This work was supported by the National Research Foundation of Korea (NRF) grant funded by the Korea government (Ministry of Science and ICT) (No.RS-2025-00557726). This work was also supported by Institute of Information & Communications Technology Planning & Evaluation (IITP) grant funded by the Korea government (MSIT) (No. RS-2024-00443251, Accurate and Safe Multimodal, Multilingual Personalized AI Tutors).

