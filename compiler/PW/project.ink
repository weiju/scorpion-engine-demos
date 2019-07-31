VAR selected_profile = 0
VAR selected_evidence = 0
VAR seen_cindy_profile = 0
VAR seen_autopsy = 0
VAR profile_count = 0
VAR evidence_count = 0
VAR selected_crossexamination = 0
VAR can_present_evidence = false
var presented_evidence = -1

~ level=intro0
~ level=lobby
~ level=court

~ yres=172

=== start ===
~ Panel=pic_title
~ Wait=0
~ Panel=null

=== start_case1
~ selected_profile = 0
~ seen_cindy_profile = 0
~ seen_autopsy = 0
~ selected_evidence = 0
~ selected_crossexamination = 0
~ profile_count = 4
~ evidence_count = 2
~ can_present_evidence = false
~ presented_evidence = -1

~ level=intro0
~ camera_y = 384 - 212
~ forcefadeout = true
Episode 1:<br>The First Turnabout
~ forcefadeout = false
~ wait = 100
*gasp*... *gasp*...

== intro0_loop0
{ camera_y > 0 :
	~ camera_y = camera_y - 2
	~ wait = 1
	-> intro0_loop0
}

~ wait = 100
~ forcefadeout = true
~ camera_x = 256+16
~ camera_y = 0
~ forcefadeout = false
~ wait = 100
Damnit! ...Why me?
~ forcefadeout = true
I can't get caught...<br>Not like this!
~ camera_y = 396
~ forcefadeout = false

== intro0_loop1
{ camera_y > 224 :
	~ camera_y = camera_y - 2
	~ wait = 1
	-> intro0_loop1
}
I-I've gotta find someone<br>to pin this on...
~ camera_x = 34*16
~ camera_y = 0
~ wait = 25
~ camera_y = 14*16
~ wait = 25
~ camera_x = 51*16
~ camera_y = 0
Someone like...
~ camera_y = 14*16
~ wait = 25
~ camera_y = 0
I'll make it look like...<br>HE did it!

=== lobby_start ===
~ level = lobby
~ forcefadeout = true
~ talkpad_textdelay = 2
August 3, 9:47 AM<br>District Court<br>Defendant Lobby No. 2
~ talkpad_textdelay = 1
~ forcefadeout = false
-> lobby_empty ->
Phoenix:<br>(Boy am I nervous!)
Mia:<br>Wright!
-> lobby_mia_smile1 ->
Phoenix:<br>Oh, h-hiya, Chief.
Mia:<br>Whew,<br>I'm glad I made it on time.
Mia:<br>Well, I have to say Phoenix,<br>I'm impressed!
-> lobby_mia_smile2 ->
Mia:<br>Not everyone takes on a<br>murder trial right off<br>the bat like this.
Mia:<br>It says a lot about<br>you... and your client as well.
Phoenix:<br>Um... thanks.
Phoenix:<br>Actually, it's because<br>I owe him a favor.
-> lobby_mia_curious ->
Mia:<br>A favor?
Mia:<br>You mean, you knew the<br>defendant before this case?
Phoenix:<br>Yes.
Phoenix:<br>Actually, I kind of owe<br>my current job to him.
Phoenix:<br>He's one of the reasons<br> I became an attorney.
-> lobby_mia_smile2 ->
Mia:<br>Well, that's news to me!
-> lobby_mia_smile1 ->
Phoenix:<br>I want to help him out<br>any way I can!
Phoenix:<br>I just... really want to help<br>him. I owe him that much.
-> lobby_mia_curious ->
???:<br>(It's over!)
???:<br>(My life, everything,<br>it's all over!)
Mia:<br>...
Mia:<br>Isn't that your client screaming<br>over there?
-> lobby_mia_smile1 ->
Phoenix:<br>Yeah... that's him.
???:<br>(Death! Despair! Ohhhh!)
-> lobby_mia_curious ->
???:<br>(I'm gonna do it,<br>I'm gonna die!!!)
Mia:<br>It sounds like<br>he wants to die...
-> lobby_mia_smile2 ->
Phoenix:<br>Um, yeah. *sigh*
-> lobby_larry_crying ->
Butz:<br>Nick!!!
Phoenix:<br>Hey.<br>Hey there, Larry.
-> lobby_larry_nervous ->
Butz:<br>Dude, I'm so guilty!!<br>Tell them I'm guilty!!!
Butz:<br>Gimmie the death sentence!<br>I ain't afraid to die!
Phoenix:<br>What!?<br>What's wrong, Larry?
-> lobby_larry_crying ->
Butz:<br>oh, it's all over...<br>I... I'm finished. Finished!
Butz:<br>I can't live in a world<br>without her! I can't!
Butz:<br>Who... who took her away from me,<br>Nick? Who did this?
Butz:<br>Aww, Nick, ya gotta tell me!<br>Who took my baby away!?
Phoenix:<br>(Hmm... the person responsible<br>for your girlfriend's death?)
Phoenix:<br>(The newspaper say<br>it was you...)
~ forcefadeout = true
Phoenix:<br>My name is Phoenix Wright.
Phoenix:<br>Here's the story:
Phoenix:<br>My first case is<br>a fairly simple one.
-> lobby_cindy ->
~ forcefadeout = false
Phoenix:<br>A young woman was killed in her<br> apartment.
Phoenix:<br>The guy they arrested was<br>the unlucky sap dating her:
~ forcefadeout = true
-> lobby_larry_nervous ->
~ forcefadeout = false
Phoenix:<br>Larry Butz... my best<br>friend since grade school.
Phoenix:<br>Our school had a saying:<br>"When something smells,<br>it's usually the Butz."
-> lobby_larry_crying ->
Phoenix:<br>In the 23 years I've known<br>him, it's usually been true.
Phoenix:<br>He has a knack for getting himself<br>in trouble.
Phoenix:<br>One thing I can say though: it's <br>usually not his fault.<br>He just has terrible luck.
~ forcefadeout = true
Phoenix:<br>But I know better than anyone<br>that he's a good guy a heart.
Phoenix:<br>That and I owe him one.<br>Which is why I took the<br>case... to clear his name.
Phoenix:<br>And that's just what I'm going to do!

=== courtroom ===
~ level = court
~ forcefadeout = true
~ talkpad_textdelay = 2
August 3, 10:00 AM<br>District Court<br>Coutroom No. 2
~ talkpad_textdelay = 1
~ forcefadeout = false
~ wait=50
-> court_gavel ->
-> court_judge_normal ->
Judge:<br>The court is now in session for<br>the trial of Mr. Larry Butz.
-> court_payne_normal ->
Payne:<br>The prosecution is ready,<br>Your Honor.
-> court_phoenix_normal ->
Phoenix:<br>The, um, defense is ready,<br>Your Honor.
-> court_judge_thinking ->
Judge:<br>Ahem.
-> court_judge_warn ->
Judge:<br>Mr. Wright?
Judge:<br>This is your first trial,<br>is it not?
-> court_phoenix_normal ->
Phoenix:<br>Y-Yes, Your Honor.<br>I'm, um, a little nervous.
-> court_judge_warn ->
Judge:<br>Your contact during this<br>trial will decide the fate<br>of your client.
Judge:<br>Murder is a serious charge.<br>For your client's sake, I hope<br>you can control your nerves.
-> court_phoenix_normal ->
Phoenix:<br>Thank... thank you, Your Honor.
-> court_judge_warn ->
Judge:<br>...
Judge:<br>Mr. Wright, given the<br>circumstances...
Judge:<br>I think we should have a test<br>to ascertain your readiness.
-> court_phoenix_normal ->
Phoenix:<br>Yes, Your Honor.
-> court_phoenix_nervous ->
Phoenix:<br>(Gulp... Hands shaking...<br>Eyesight... fading...)
-> court_judge_warn ->
Judge:<br>The test will consist of a<br>few simple questions.<br>Answer them clearly and concisely.

== choose_defendant
-> court_judge_warn ->
Judge:<br>Please state the name<br>of the defendant in this case.
+ Phoenix Wright -> defendant_phoenixwright
+ Larry Butz -> defendant_larrybutz
+ Mia Fey -> defendant_miafey
-> choose_defendant

== defendant_phoenixwright
-> court_phoenix_thinking ->
Phoenix:<br>Um... the defendant...<br>is me, right?
-> court_mia_sad ->
Mia:<br>Wright! Have you completely<br>lost your mind? Focus!
-> court_mia_shocked ->
Mia:<br>The defenfant is the<br>person on trial!
Mia:<br>You're his lawyer!
-> court_mia_disappointed ->
Phoenix:<br>Um, er, eh?<br>Oh yeah, right! Eh heh heh.
Mia:<br>This is no laughing matter!
Mia:<br>You did pass the bar,<br>didn't you?
-> repeat_defendant_answer

== defendant_miafey
-> court_phoenix_thinking ->
Phoenix:<br>The, um, defendant?<br>That's... er... Mia Fey?
-> court_mia_disappointed ->
Mia:<br>Wrong, Wright.<br>Look, I have to leave.
Mia:<br>I have to go home. I'm...<br>I'm expecting a delivery.
Phoenix:<br>Aw, c'mon Chief.<br>There's no need to be<br>going so soon, is there?
-> court_mia_shocked ->
Mia:<br>Wright!
Mia:<br>Listen: the defendant is<br>the one on trial--your client!
-> court_mia_disappointed ->
Mia:<br>I mean, that's about as<br>basic as you can get!
Phoenix:<br>(I put my foot in it this time!<br>I've got to relax!)
== repeat_defendant_answer
-> court_judge_warn ->
Judge:<br>Sorry, I couldn't hear your<br>answer. I'll ask once more:
-> choose_defendant

== defendant_larrybutz
-> court_phoenix_thinking ->
Phoenix:<br>The defendant? Well, that's<br>Larry Butz, Your Honor.
-> court_judge_normal ->
Judge:<br>Correct.
Judge:<br>Just keep your wits about<br>you and you'll do fine.
Judge:<br>Next Question:
-> court_judge_warn ->
Judge:<br>This is a murder trial. Tell me -<br>
Judge:<br>What's the victim's name?
-> court_phoenix_normal ->
Phoenix:<br>(Whew, I know this one! Glad<br>I read the case report cover<br>to cover so many times.)
-> court_phoenix_thinking ->
Phoenix:<br>(It's... wait... Uh-oh!)
-> court_phoenix_nervous ->
Phoenix:<br>(No... no way! I forgot!<br>I'm drawing a total blank<br>here!)
-> court_mia_shocked ->
Mia:<br>Phoenix! Are you absolutely<br>SURE you're up to this?
Mia:<br>You don't even know the<br>victim's name!?
-> court_mia_disappointed ->
Phoenix:<br>Oh, the victim! O-Of course<br>I know the victim's name!
Phoenix:<br>I, um, just forgot.<br>... Temporarily
Mia:<br>I think I feel a migraine coming on.
-> court_mia_serious ->
Mia:<br>Look, the victim's name<br>is listed in the Court Record.
Mia:<br>Just select Court Record<br>to check it, okay?
-> court_mia_disappointed ->
Mia:<br>Remember to check it often.<br>Do it for me, please.<br>I'm begging you.

== choose_victim
-> court_judge_warn ->
Judge:<br>Let's hear your answer.<br>Who is the victim in this case.
+ Mia Fey -> victim_miafey
+ Cinder Block -> victim_cinderblock
+ {seen_cindy_profile} Cindy Stone -> victim_cindystone
+ View Court Record -> victim_courtrecord

== victim_miafey
-> court_phoenix_thinking ->
Phoenix:<br>Um... Mia Fey?
-> court_mia_shocked ->
Mia:<br>W-W-What!? How can I be<br>the victim!?
-> court_mia_disappointed ->
Phoenix:<br>Oh! Right! Sorry! I, er,<br>it was the first name that<br>popped into my head, and--
-> court_mia_serious ->
Mia:<br>The Court Record!<br>Remember to use it<br>when you are in a pinch.
-> court_judge_warn ->
Judge:<br>Let me ask that one again:
-> choose_victim

== victim_cinderblock
-> court_phoenix_thinking ->
Phoenix:<br>Oh, um, wasn't it Ms. Block?<br>Ms. Cinder Block?
-> court_judge_warn ->
Judge:<br>The person in question was a<br>victim of murder, not ill-<br>conceived naming, Mr. Wright.
-> court_mia_disappointed ->
Mia:<br>Wright?
Mia:<br>If you forget something, just<br>use the Court Record<br>to help you remember.
-> court_mia_serious ->
Mia:<br>A mistake in court<br>could cost you the case.
-> court_judge_warn ->
Judge:<br>I'll ask you again:
-> choose_victim

== victim_courtrecord
-> open_court_record ->
-> choose_victim

== victim_cindystone
-> court_phoenix_normal ->
Phoenix:<br>Um... the victim's name is Cindy Stone.
-> court_judge_normal ->
Judge:<br>Correct.
Judge:<br>Now, tell me, what was the cause of death?


== choose_causeofdeath
-> court_judge_warn ->
Judge:<br>She died because she was...?
+ Poisoned -> causeofdeath_poisioned
+ Strangled -> causeofdeath_strangled
+ {seen_autopsy} Hit with a blunt object -> causeofdeath_blunt
+ View Court Record -> causeofdeath_courtrecord
-> end

== causeofdeath_poisioned
-> court_phoenix_thinking ->
Phoenix:<br>Oh, right! Wasn't she, um,<br>poisioned by er... poison?
-> court_judge_shocked ->
Judge:<br>You're asking me?
-> court_mia_disappointed ->
Phoenix:<br>Um... Chief! Help me out!
Mia:<br>Check the court record.<br>Remember?
Phoenix:<br>(Geez. Give a guy a break!)
-> court_judge_warn ->
Judge:<br>Let me ask again.
-> choose_causeofdeath

== causeofdeath_strangled
-> court_phoenix_thinking ->
Phoenix:<br>Right... she was<br>strangled, wasn't she?
-> court_mia_disappointed ->
Mia:<br>Please tell me that was<br>you talking to yourself.
-> court_judge_warn ->
Judge:<br>If you wish to hang yourself<br>Mr. Wright, you're welcome to,<br>but not inside my courtroom.
Judge:<br>I suppose there's nothing to<br>do but give you another try:
-> choose_causeofdeath

== causeofdeath_courtrecord
-> open_court_record ->
-> choose_causeofdeath

== causeofdeath_blunt
-> court_phoenix_normal ->
Phoenix:<br>She was struck once,<br>by a blunt object.
-> court_judge_normal ->
Judge:<br>Correct.
Judge:<br>You've answered all my<br>questions. I see no reason<br>why we shouldn't proceed.
-> court_judge_warn ->
Judge:<br>You seem much more relaxed,<br>Mr. Wright. Good for you.
-> court_phoenix_nervous ->
Phoenix:<br>Thank you, Your Honor.<br>(Because I don't FEEL<br>relaxed, that's for sure.)
-> court_judge_normal ->
Judge:<br>Well, then...
-> court_judge_warn ->
Judge:<br>First, a question for the<br>prosecution. Mr. Payne?
-> court_payne_normal ->
Payne:<br>Yes, Your Honor?
Judge:<br>As Mr. Wright just told us,<br>the victim was struck with<br>a blunt object.
-> court_judge_normal ->
Judge:<br>Would you explain to the court<br>just what that "object" was?
-> court_payne_normal ->
Payne:<br>The murder weapon was this<br>statue of "The Thinker."
Payne:<br>It was found lying on the<br>floor, next to the victim.
-> court_judge_normal ->
Judge:<br>I see... the court accepts<br>it into evidence.
~camera_y = 96 * 16
~camera_x = 2 * 16 * 17
~evidence_count = 3
Statue added to<br>the court record.
-> court_mia_serious ->
Mia:<br>Wright...
Mia:<br>Be sure to pay attention to<br>any evidence added during the trial.
Mia:<br>That evidence is the only<br>ammunition you have in court.
Mia:<br>Check the Court record<br>frequently.
-> court_gavel ->
-> court_judge_normal ->
Judge:<br>Mr. Payne, the prosecution<br>may call its first witness.
-> court_payne_normal ->
Payne:<br>The prosecution calls the<br>defendant, Mr. Butz, to the<br>stand.
-> court_mia_serious ->
Phoenix:<br>Um, Chief, what do I do now?
Mia:<br>Pay attention. You don't want<br>to miss any information that<br>might help your client's case.
Mia:<br>You'll get your chance to<br>respond to the prosecution<br>later, so be ready!
Mia:<br>Let's just hope he doesn't<br>say anything... unfortunate.
Phoenix:<br>(Uh oh, Larry gets excited<br>easily... this could be bad.)
~ forcefadeout = true
~ wait = 50
-> court_larry_normal ->
~ forcefadeout = false
~ wait = 100
-> court_payne_normal ->
Payne:<br>Ahem.
Payne:<br>Mr. Butz. Is it not true that<br>the victim had recently<br>dumped you?
-> court_larry_nervous ->
Butz:<br>Hey, watch it buddy!
Butz:<br>We were great together!<br>We were Romeo and Juliet,<br>Cleopatra and Mark Anthony!
-> court_phoenix_nervous ->
Phoenix:<br>(Um... didn't they all die?)
-> court_larry_normal ->
Butz:<br>I wasn't dumped! She just<br>wasn't taking my phone call.<br>Or seeing me... Ever.
-> court_larry_nervous ->
Butz:<br>WHAT'S IT TO YOU, ANYWAY!?
-> court_payne_normal ->
Payne:<br>Mr. Butz, what you describe<br>is generally what we mean<br>by "dumped."
Payne:<br>In fact, she had completely<br>abandoned you... and was<br>seeing other men!
Payne:<br>She had just returned from<br>overseas with one of them<br>the day before the murder!
-> court_larry_nervous ->
Butz:<br>Whaddya mean, "one of them"!?
Butz:<br>Lies! All of it, lies!<br>I don't believe a word of it.
-> court_payne_normal ->
Payne:<br>Your Honor, the<br>victim's passport.
Payne:<br>According to this, she was<br>in Paris until the day before<br>she died.
~camera_y = 96 * 16
~camera_x = 3 * 16 * 17
~evidence_count = 4
Passport added to<br>the court record.
-> court_judge_normal ->
Judge:<br>Hmm... Indeed, she appears<br>to have returned the day<br>before the murder.
-> court_larry_nervous ->
Butz:<br>Dude... no way...
-> court_payne_normal ->
Payne:<br>The victim was a model, but<br>did not have a large income.
Payne:<br>It appears that she has<br>several "Sugar Daddies."
-> court_larry_nervous ->
Butz:<br>Daddies? Sugar?
-> court_payne_normal ->
Payne:<br>Yes. Older men, who gave<br>her money and gifts.
Payne:<br>She took their money and used<br>it to support their lifestyle.
-> court_larry_nervous ->
Butz:<br>Duuude!
Payne:<br>We can clearly see what kind<br>of woman this Ms. Stone was.
Payne:<br>Tell me, Mr. Butz, what do<br>you think of her now?
-> court_mia_serious ->
Mia:<br>Wright...
Mia:<br>I don't think you want<br>him to answer than question.
-> court_phoenix_nervous ->
Phoenix:<br>(Yeah... Larry has a way of<br>running his mouth in all<br>the wrong directions.)
-> court_phoenix_thinking ->
Phoenix:<br>(Should I...?)
+ Wait and see what happens -> WaitAndSee
+ Stop him from answering -> StopFromAnswering

== WaitAndSee
-> court_phoenix_thinking ->
Phoenix:<br>(Might be better not to<br>get involved in this one...)
-> court_payne_normal ->
Payne:<br>Well, Mr. Butz?
-> court_larry_nervous ->
Butz:<br>Dude, no way!<br>That cheatin' she-dog!
-> AfterSheDog

== StopFromAnswering
-> court_phoenix_desk ->
Phoenix:<br>My client had no idea the<br>victim was seeing other men!
-> court_phoenix_point ->
Phoenix:<br>That question is<br>irrelevant to this case!
-> court_payne_nervous ->
Payne:<br>Oof! *wince*
-> court_larry_nervous ->
Butz:<br>Dude! Nick!<br>Whaddya mean, "irrelevant"!?
-> court_larry_normal ->
Butz:<br>That cheatin' she-dog!

== AfterSheDog
-> court_larry_nervous ->
Butz:<br>I'm gonna die.<br>I'm just gonna drop dead!
Butz:<br>And when I meet her in<br>the afterlife...
Butz:<br>I'm going to get to the bottom<br>of this!
-> court_gavel ->
-> court_judge_normal ->
Judge:<br>Let's continue with the trial,<br>shall we?
-> court_payne_normal ->
Payne:<br>I believe the accused's<br>motive is clear to everyone.
-> court_judge_normal ->
Judge:<br>Yes, quite.
-> court_phoenix_nervous ->
Phoenix:<br>(Oh boy. This is so not<br>looking good.)
-> court_payne_normal ->
Payne:<br>Next question!
Payne:<br>You went to the victim's<br>apartment on the day of<br>the murder, did you not?
-> court_larry_nervous ->
Butz:<br>Gulp!
-> court_payne_normal ->
Payne:<br>Well, did you, or did you not?
-> court_larry_normal ->
Butz:<br>Heh? Heh heh. Well, maybe<br>I did, and maybe I didn't!
-> court_phoenix_nervous ->
Phoenix:<br>(Uh oh. He went.)
Phoenix:<br>(What do I do?)
+ Have him answer honestly -> AnswerHonestly
+ Stop him from answering -> AnswerStop

== AnswerHonestly
-> court_phoenix_normal ->
Phoenix:<br>(I know! I'll send him<br>a signal...)
-> court_phoenix_point ->
Phoenix:<br><br>     (TELL THE TRUTH)
-> court_larry_normal ->
Butz:<br>Er... Yeah! Yeah!<br>I was there! I went!
-> court_gavel ->
-> court_judge_normal ->
Judge:<br>Order!
-> court_judge_warn ->
Judge:<br>Well, Mr. Butz?
-> court_larry_normal ->
Butz:<br>Dude, chill!
Butz:<br>She wasn't home, man...<br>So, like, I didn't see her.
-> objection_payne ->
Payne:<br>Your Honor, the defendant<br>is lying.
-> court_judge_shocked ->
Judge:<br>Lying?
-> court_payne_normal ->
Payne:<br>The prosectution would like<br>to call a witness who can<br>prove Mr. Butz is lying.
-> call_witness

== AnswerStop
-> court_phoenix_normal ->
Phoenix:<br>(I know! I'll send him<br>a signal...)
-> court_phoenix_desk ->
Phoenix:<br><br>     (LIE LIKE A DOG)
-> court_larry_normal ->
Butz:<br>Um, well, see it's like this:<br>I don't remember.
-> court_payne_normal ->
Payne:<br>You "don't remember"?
Payne:<br>Well then, we'll just<br>have to remind you!
-> court_phoenix_normal ->
Phoenix:<br>(I've got a bad feeling<br>about this...)
-> court_payne_normal ->
Payne:<br>We have a witness that can<br>prove he DID go to the<br>victim's apartment that day!

== call_witness
-> court_judge_shocked ->
Judge:<br>Well, that simplifies matters.<br>Who is your witness?
-> court_payne_normal ->
Payne:<br>The man who found<br>the victim's body.
Payne:<br>Just before making the<br>gruesome discovery...
-> court_larry_nervous ->
Payne:<br>He saw the defendant fleeing<br>the scene of the crime!
-> court_gavel ->
-> court_gavel ->
-> court_judge_normal ->
Judge:<br>Order! Order in the court!
-> court_judge_warn ->
Judge:<br>Mr. Payne, the prosecution<br>may call its witness.
-> court_payne_normal ->
Payne:<br>Yes, Your Honor.
-> court_phoenix_nervous ->
Phoenix:<br>(This is bad...)
-> court_payne_normal ->
Payne:<br>On the day of the murder, my<br>witness was selling newspapers<br>at the victim's building.
Payne:<br>Please bring Mr. Frank Sahwit<br>to the stand!
~ forcefadeout = true
~ wait = 50
-> court_sahwit_normal ->
~ forcefadeout = false
~ wait = 100
-> court_payne_normal ->
Payne:<br>Mr. Sahwit, you sell newspaper<br>subscriptions, is this correct?
-> court_sahwit_normal ->
Sahwit:<br>Oh, oh yes!<br>Newspapers, yes!
-> court_judge_normal ->
Judge:<br>Mr. Sahwit, you may<br>proceed with your testimony.
-> court_judge_warn ->
Judge:<br>Please tell the court what<br>you saw on the day of the<br>murder.
~ forcefadeout = true
~ wait = 50
-> court_sahwit_normal ->
~ forcefadeout = false
<br>  -- Witness's Account --
Sahwit:<br>I was going door-to-door,<br>selling subscriptions when I saw<br>a man fleeing an apartment.
Sahwit:<br>I thought he must be in a<br>hurry because he left the<br>door half-open behind him.
Sahwit:<br>Thinking it strange, I looked<br>inside the apartment.
Sahwit:<br>Then I saw her lying there...<br>A woman... not moving... dead!
Sahwit:<br>I quailed in fright and found<br>myself unable to go inside.
Sahwit:<br>I thought to call the police<br>immediately!
Sahwit:<br>However, the phone in her<br>apartment wasn't working.
Sahwit:<br>I went to a nearby park and<br>found a public phone.
Sahwit:<br>I remember the time exactly:<br>It was 1:00pm.
Sahwit:<br>The man who ran was, without<br>a doubt, the defantant sitting<br>right over there.
~ forcefadeout = true
-> court_judge_thinking ->
~ forcefadeout = false
Judge:<br>Hmm...
-> court_phoenix_desk ->
Phoenix:<br>(Larry! Why didn't you<br>tell the truth?)
-> court_phoenix_nervous ->
Phoenix:<br>(I can't defend you against<br>a testimony like that!)
-> court_judge_warn ->
Judge:<br>Incidentally, why wasn't<br>the phone in the victim's<br>apartment working?
-> court_payne_normal ->
Payne:<br>Your Honor, at the time of<br>the murder, there was a<br>blackout in the building.
-> court_judge_shocked ->
Judge:<br>Aren't phones supposed to<br>work during a blackout?
-> court_payne_normal ->
Payne:<br>Yes, Your Honor...
Payne:<br>However, some cordless phones<br>do not function normally.
Payne:<br>The phone that Mr. Sahwit<br>used was one of those.
Payne:<br>Your Honor...
Payne:<br>I have a record of the<br>blackout, for your perusal.

~camera_y = 96 * 16
~camera_x = 4 * 16 * 17
~evidence_count = 5
Blackout Record added<br>to the Court Record.
-> court_judge_thinking ->
Judge:<br>Now, Mr. Wright...
-> court_phoenix_normal ->
Phoenix:<br>Yes!<br>Er... yes, Your Honor?
-> court_judge_warn ->
Judge:<br>You may begin your<br>cross-examination.
-> court_phoenix_thinking ->
Phoenix:<br>C-Cross-examination,<br>Your Honor?
-> court_mia_serious ->
Mia:<br>Alright, Wright, this is it.<br>The real deal!
Phoenix:<br>Uh... what exactly am I<br>supposed to do?
Mia:<br>Why, you expose the lies in<br>the testimony the witness<br>just gave!
Phoenix:<br>Lies! What?! He was lying!?
Mia:<br>Your client is innocent,<br>right?
Mia:<br>Then that witness must have<br>lied in his testimony!
Mia:<br>Or is your client really...<br>guilty?
Phoenix:<br>!!! How do I prove he's not?
Mia:<br>You hold the key.<br>It's in the evidence!
Mia:<br>Compare the witness's<br>testimony to the<br>evidence at hand.
Mia:<br>There's bound to be a<br>contradiction in there!
Mia:<br>First, find contradictions<br>between the Court Record<br>and the witness's testimony.
Mia:<br>Then, once you've found the<br>contradicting evidence...
Mia:<br>Present it and rub<br>it in the witness's face!
Phoenix:<br>Um... okay.
Mia:<br>Look at the Court Record<br>and point out the contradictions<br>in the testimony!
~ forcefadeout = true
-> court_sahwit_normal ->
~ forcefadeout = false
<br>  -- Witness's Account --<br>  -- Cross-Examination --

== cross_examination
~ evidence_count = 5
-> court_sahwit_normal ->

//wrap cross examination

{ selected_crossexamination == 0:
Sahwit:<br>I was going door-to-door,<br>selling subscriptions when I saw<br>a man fleeing an apartment.
}
{ selected_crossexamination == 1:
Sahwit:<br>I thought he must be in<br>a hurry because he left the<br>door half-open behind him.
}
{ selected_crossexamination == 2:
Sahwit:<br>Thinking it strange, I looked<br>inside the apartment.
}
{ selected_crossexamination == 3:
Sahwit:<br>Then I saw her lying there...<br>A woman... not moving... dead!
}
{ selected_crossexamination == 4:
Sahwit:<br>I quailed in fright and found<br>myself unable to go inside.
}
{ selected_crossexamination == 5:
Sahwit:<br>I thought to call the police<br> immediately!
}
{ selected_crossexamination == 6:
Sahwit:<br>However, the phone in her<br>apartment wasn't working.
}
{ selected_crossexamination == 7:
Sahwit:<br>I went to a nearby park and<br>found a public phone.
}
{ selected_crossexamination == 8:
Sahwit:<br>I remember the time exactly:<br>It was 1:00PM.
}
{ selected_crossexamination == 9:
Sahwit:<br>The man who ran was, without<br>a doubt, the defendant sitting<br>right over there.
}

//+ Press Him -> cross_examination_press
+ Next Line -> cross_examination_next
+ {selected_crossexamination > 0} Previous Line -> cross_examination_previous
+ Court Record -> cross_examination_courtrecord

== cross_examination_courtrecord
~ can_present_evidence = true
~ presented_evidence = -1
-> open_court_record ->
~ can_present_evidence = false
{ presented_evidence >= 0:

	-> objection_phoenix ->

	//We've presented evidence
	{ selected_crossexamination == 8:
		{ presented_evidence == 1:
			-> court_phoenix_point ->
			Phoenix:<br>You found the body at 1:00 PM.<br>You're sure?
			-> court_sahwit_normal ->
			Sahwit:<br>Yes.<br>It was 1:00 PM, for certain.
			-> court_phoenix_normal ->
			Phoenix:<br>Frankly, I find that<br>hard to believe!
			-> court_phoenix_paper ->
			Phoenix:<br>Your statement directly<br>contradicts the autopsy report.
			Phoenix:<br>The autopsy notes the<br>time of death at sometime after<br>4PM.
			Phoenix:<br>There was no body to... er...<br>no "body" to find at 1:00 PM!
			-> court_phoenix_smug ->
			Phoenix:<br>How do you explain this<br>three-hour gap?
			-> court_sahwit_nervous ->
			Sahwit:<br>!!!
			Sahwit:<br>Oh, that! Oh, er...
			-> objection_payne ->
			-> court_payne_nervous ->
			Payne:<br>This is trivial! The witness<br>merely forgot the time!
			-> court_judge_normal ->
			Judge:<br>After his testimony, I find<br>that hard to believe.
			-> court_judge_warn ->
			Judge:<br>Mr. Sahwit...
			Judge:<br>Why were you so certain<br>that you found the body<br>at 1:00pm?
			-> court_sahwit_nervous ->
			Sahwit:<br>I... er... well, I...<br>Gee, that's a really good<br>question!
			-> court_mia_serious ->
			Mia:<br>Great job, Wright! Way to put him on the spot!
			Mia:<br>That's all you have to do:<br>point out contradictions!
			Mia:<br>Lies always beget more lies!
			Mia:<br>See through one, and their<br>whole story falls apart!
			~ forcefadeout = true
			-> start
		}
	}
	
	//If we've reached here, this evidence is wrong
	-> court_phoenix_desk ->
	Phoenix:<br>Your Honor! What do you think<br>about the witness's statement?
	-> court_judge_warn ->
	Phoenix:<br>Uh... I'm not sure I follow?
	-> court_phoenix_desk ->
	Phoenix:<br>It clearly, er, contradicts<br>the... um... I thought...
	-> court_judge_warn ->
	Judge:<br>You don't sound very<br>convinced, Mr. Wright.
	Judge:<br>Objection overruled.
	Phoenix:<br>(I don't think that won me<br>any points with the judge...)
	
}
-> cross_examination

== cross_examination_press
== cross_examination_present

== cross_examination_previous
~ selected_crossexamination = selected_crossexamination - 1
-> cross_examination

== cross_examination_next
~ selected_crossexamination = selected_crossexamination + 1

{ selected_crossexamination == 10:
-> court_mia_serious ->
Mia:<br>That's all of it.
Mia:<br>There must be a contradiction<br>in there somewhere.
Mia:<br>Examine the Court Record<br>if something strikes you as being suspicious.
Mia:<br>Then, find the evidence that<br>contradicts his testimony,<br>and present it to him!
~selected_crossexamination = 0
}

-> cross_examination

== open_court_record
+ View profiles -> open_profiles
+ View evidence -> open_evidence
+ Go back -> return

== open_evidence
//Wrap evidence
{ selected_evidence < 0 : 
	~selected_evidence = evidence_count - 1
}
{ selected_evidence >= evidence_count :
	~selected_evidence = 0
}
~ camera_y = 96 * 16
~ camera_x = selected_evidence * 16 * 17

{ selected_evidence == 0 :
	Attorney's Badge:<br>No one would believe I<br>was a defense attorney<br>if I didn't carry this.
}
{ selected_evidence == 1 :
	Cindy's Autopsy Report:<br>Time of Death: 7-31, 4PM-5PM.<br>Cause of death: loss of<br>blood due to blunt trauma.
	~seen_autopsy = true
}
{ selected_evidence == 2 :
	Statue/The Thinker:<br>A statue in the shape of "The Thinker".<br>It's rather heavy.
}
{ selected_evidence == 3 :
	Passport:<br>The victim apparently arrived home<br>from Paris on 7/30,<br>the day before the murder.
}	
{ selected_evidence == 4 :
	Blackout Record:<br>Electricity to Ms. Stone's building was out<br>from noon to 6 PM on the day of the crime.
}

+ Next Record -> next_evidence
+ Previous Record -> previous_evidence
+ {can_present_evidence} Present -> present_evidence
+ Go back -> open_court_record

== next_evidence
~ selected_evidence = selected_evidence + 1
-> open_evidence

== previous_evidence
~ selected_evidence = selected_evidence - 1
-> open_evidence

== present_evidence
~ presented_evidence = selected_evidence
->->

== open_profiles
//Wrap profiles
{ selected_profile < 0 : 
	~selected_profile = profile_count - 1
}
{ selected_profile >= profile_count :
	~selected_profile = 0
}
~ camera_y = 83*16
~ camera_x = selected_profile * 16 * 17

{ selected_profile == 0 :
	Mia Fey. Age 27. Female:<br>Chief Attorney at Fey and Co<br>My boss, and a very<br>good defense attorney.
}
{ selected_profile == 1 :
	Larry Butz. Age 23. Male:<br>The defendant in this case.<br>A likeable guy who was my<br>friend in grade school.
}
{ selected_profile == 2 :
	~ seen_cindy_profile = true
	Cindy Stone. Age 22. Female:<br>The victim in this case.<br>A model, she lived in an<br>apartment by herself.
}
{ selected_profile == 3 :
	Winston Paine. Age 52. Male:<br>The prosecutor for this case.<br>Lacks presence, Generally bad<br>at getting his points across.
}
+ Next Record -> next_profile
+ Previous Record -> previous_profile
+ Go back -> open_court_record

== next_profile
~ selected_profile = selected_profile + 1
-> open_profiles

== previous_profile
~ selected_profile = selected_profile - 1
-> open_profiles

== lobby_empty
~camera_x = 0
~camera_y = 0
->->

== lobby_mia_smile1
~camera_x = 0
~camera_y = 14 * 16
->->

== lobby_mia_smile2
~camera_x = 0
~camera_y = 14 * 16 * 2
->->

== lobby_mia_curious
~camera_x = 0
~camera_y = 14 * 16 * 3
->->

== lobby_larry_crying
~camera_x = 17 * 16
~camera_y = 0
->->

== lobby_larry_nervous
~camera_x = 17 * 16
~camera_y = 14 * 16
->->

== lobby_cindy
~camera_x = 17 * 2 * 16
~camera_y = 0
->->

//== court_gallery
//~camera_x=0
//~camera_y=0
//~wait=50
//->->

== court_gavel
~sound = snd_gavel
~camera_x=0
~camera_y=14 * 16
~wait=50
->->

== court_judge_normal
~camera_x=0
~camera_y=14 * 16 * 2
->->

== court_judge_thinking
~camera_x=0
~camera_y=14 * 16 * 3
->->

== court_judge_warn
~camera_x=0
~camera_y=14 * 16 * 4
->->

== court_judge_shocked
~camera_x=0
~camera_y=14 * 16 * 5
->->

== court_payne_normal
~camera_x=17 * 16
~camera_y=0
->->

== court_payne_smug
~camera_x=17 * 16
~camera_y=14 * 16
->->

== court_payne_nervous
~camera_x=17 * 16
~camera_y=28 * 16
->->

== objection_payne
~sound = snd_objection
~camera_x = 68*16
~camera_y = 83*16
~wait=50
->->

== objection_phoenix
~sound = snd_objection
~camera_x = 68*16
~camera_y = 83*16
~wait=50
->->

== court_phoenix_normal
~camera_x=17 * 16 * 2
~camera_y = 0
->->

== court_phoenix_nervous
~camera_x=17 * 16 * 2
~camera_y = 14 * 16 * 1
->->

== court_phoenix_thinking
~camera_x=17 * 16 * 2
~camera_y = 14 * 16 * 2
->->

== court_phoenix_paper
~camera_x=17 * 16 * 2
~camera_y = 14 * 16 * 3
->->

== court_phoenix_point
~camera_x=17 * 16 * 2
~camera_y = 14 * 16 * 4
->->

== court_phoenix_shocked
~camera_x=17 * 16 * 2
~camera_y = 14 * 16 * 5
->->

== court_phoenix_smug
~camera_x = 51 * 16
~camera_y = 56 * 16
->->

== court_phoenix_desk
~sound = snd_deskslam
~camera_x = 51 * 16
~camera_y = 70 * 16
->->

== court_mia_disappointed
~camera_x=17 * 16 * 3
~camera_y = 0
->->

== court_mia_sad
~camera_x=17 * 16 * 3
~camera_y = 14 * 16 * 1
->->

== court_mia_shocked
~camera_x=17 * 16 * 3
~camera_y = 14 * 16 * 2
->->

== court_mia_serious
~camera_x=17 * 16 * 3
~camera_y = 14 * 16 * 3
->->

== court_larry_normal
~camera_x=68 * 16
~camera_y=0
->->

== court_larry_nervous
~camera_x=68 * 16
~camera_y=14 * 16
->->

== court_larry_normal
~camera_x=68 * 16
~camera_y=0
->->

== court_sahwit_normal
~camera_x=68 * 16
~camera_y=14 * 16 * 2
->->

== court_sahwit_nervous
~camera_x=68 * 16
~camera_y=14 * 16 * 3
->->

== return
->->

