//
//  AdviceViewModel.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/4/25.
//

import Foundation

class AdviceViewModel {
	
	static let shared = AdviceViewModel()
	
	private init() {}
	
	let advice: [Advice] = [
		Advice(
			title: "Strength in Restraint",
			description: "Abu Hurayra reported that the Messenger of Allah, may Allah bless him and grant him peace, said, \"The person who is strong is not strong because he can knock people down. The person who is strong is the one who controls himself when he is angry.\"",
			emotion: .angry,
			source: "Al-Adab Al-Mufrad 1317"
		),
		Advice(
			title: "Seek Refuge in Allah",
			description: "Say: A‘oodhu billaahi min ash-shaytaan ir-rajeem (I seek refuge with Allah from the accursed devil).",
			emotion: .angry,
			source: "Al-Bukhari 3282, Muslim 2610"
		),
		Advice(
			title: "Change Your Position",
			description: "If you are angry while standing, sit down. If still angry, lie down. This reduces anger.",
			emotion: .angry,
			source: "Abu Dawood 4782"
		),
		Advice(
			title: "Reflect on the Quran",
			description: "Who spend [in the cause of Allah] during ease and hardship and who restrain anger and who pardon the people – and Allah loves the doers of good.",
			emotion: .angry,
			source: "Quran 3:134"
		),
		Advice(
			title: "Al-Ghazali’s View on Anger",
			description: "Breaking the power of anger is among the most important aspects of religion… but not by removing it, for its root does not disappear.",
			emotion: .angry,
			source: "The Forty Foundations of Religion, Book 3"
		),
		Advice(
			title: "Train It Like a Dog",
			description: "Anger is like a hunting dog that does not oppose the hunter who trained it. It is led by intellect and sacred law, only after spiritual training and forbearance.",
			emotion: .angry,
			source: "Commentary on Al-Ghazali’s Foundations of Religion"
		),
		Advice(
			title: "Allah’s Mercy is Vast",
			description: "Say, “O My servants who have transgressed against themselves [by sinning], do not despair of the mercy of Allah. Indeed, Allah forgives all sins. Indeed, it is He who is the Forgiving, the Merciful.”",
			emotion: .guilty,
			source: "Quran 39:53"
		),
		Advice(
			title: "Remember Allah’s Names",
			description: "And to Allah belong the best names, so invoke Him by them. And leave [the company of] those who practice deviation concerning His names. They will be recompensed for what they have been doing.",
			emotion: .guilty,
			source: "Surah Al-A'raf 7:180"
		),
		Advice(
			title: "Your Effort Is Never Lost",
			description: "If somebody intends to do a good deed and he does not do it, then Allah will write for him a full good deed. If he intends to do it and actually does it, Allah will write it as ten to seven hundred times. If someone intends to do a bad deed and does not do it, Allah will write a full good deed. But if he does it, then Allah will write one bad deed.",
			emotion: .guilty,
			source: "Sahih al-Bukhari 6491, Sahih Muslim 131"
		),
		Advice(
			title: "Allah’s Mercy Surpasses All",
			description: "Narrated `Umar bin Al-Khattab: Some captives were brought before the Prophet ﷺ, and among them was a woman searching for her child. Whenever she found a child, she would take it to her chest and nurse it. The Prophet ﷺ said: Do you think this woman would throw her child into the fire? We said: No, not if she can help it. He ﷺ said: Allah is more merciful to His servants than this mother is to her child.",
			emotion: .guilty,
			source: "Sahih al-Bukhari 5999, Sahih Muslim 2754"
		),
		Advice(
			title: "Be Thankful",
			description: "And [remember] when your Lord proclaimed, If you are grateful, I will surely increase you [in favor]; but if you deny, indeed, My punishment is severe.",
			emotion: .happy,
			source: "Quran 14:7"
		),
		Advice(
			title: "Share Gratitude with Others",
			description: "The Prophet ﷺ said: He who does not thank the people is not thankful to Allah.",
			emotion: .happy,
			source: "Abu Dawood 4811"
		),
		Advice(
			title: "Reflect on the Blessings",
			description: "And if you should count the favors of Allah, you could not enumerate them. Indeed, Allah is Forgiving and Merciful.",
			emotion: .happy,
			source: "Quran 16:18"
		),
		Advice(
			title: "Ease Follows Hardship",
			description: "Indeed, with hardship [will be] ease.",
			emotion: .sad,
			source: "Quran 94:6"
		),
		Advice(
			title: "Allah Is with the Patient",
			description: "O you who have believed, seek help through patience and prayer. Indeed, Allah is with the patient.",
			emotion: .sad,
			source: "Quran 2:153"
		),
		Advice(
			title: "Talk to Allah at Night",
			description: "Indeed, the hours of the night are more effective for concurrence [of heart and tongue] and more suitable for words.",
			emotion: .sad,
			source: "Quran 73:2-6"
		),
		Advice(
			title: "Even Prophets Faced Deep Trials",
			description: "Prophet Ya‘qub (عليه السلام) grieved deeply over the loss of his beloved son, weeping until he lost his sight. Yet he never gave up hope in the mercy of Allah, and remained steadfast in his trust in the Divine plan.",
			emotion: .sad,
			source: "Surah Yusuf, Ayahs 83–87"
		),
		Advice(
			title: "Certainty Overrides Doubt",
			description: "Al-Hasan bin 'Ali said: I remember that the Messenger of Allah ﷺ said: Leave what makes you in doubt for what does not make you in doubt. The truth brings tranquility while falsehood sows doubt.",
			emotion: .doubtful,
			source: "At-Tirmidhi 2518"
		),
		Advice(
			title: "Clarity Comes Through Seeking Knowledge",
			description: "And We sent not before you except men to whom We revealed [Our message]. So ask the people of the message if you do not know.",
			emotion: .doubtful,
			source: "Quran 16:43"
		),
		Advice(
			title: "Ignore Waswas (Doubt) in Faith",
			description: "It is narrated on the authority of Abu Huraira that the Messenger of Allah (ﷺ) said: Men will continue to question one another till this is propounded: Allah created all things but who created Allah? He who found himself confronted with such a situation should say: I affirm my faith in Allah.",
			emotion: .doubtful,
			source: "Sahih Muslim 134"
		),
		Advice(
			title: "Your Sincerity Matters Most",
			description: "To Allāh belongs whatever is in the heavens and whatever is in the earth. Whether you show what is within yourselves or conceal it, Allāh will bring you to account for it. Then He will forgive whom He wills and punish whom He wills, and Allāh is over all things competent.",
			emotion: .doubtful,
			source: "Quran 2:284"
		),
		Advice(
			title: "Your Tears Are Not Wasted",
			description: "The Prophet ﷺ said: No fatigue, disease, sorrow, sadness, hurt, or distress befalls a Muslim—even the prick of a thorn—except that Allah expiates some of his sins through it.",
			emotion: .hurt,
			source: "Sahih al-Bukhari 5641"
		),
		Advice(
			title: "Let the Hurt Purify You",
			description: "A'isha reported: The Messenger of Allah ﷺ said: There is nothing that afflicts a believer, not even the pricking of a thorn, except that Allah decrees good or erases sin because of it.",
			emotion: .hurt,
			source: "Sahih Muslim 2572"
		),
		Advice(
			title: "You’re Not Forgotten",
			description: "So do not weaken and do not grieve, and you will be superior if you are [true] believers.",
			emotion: .hurt,
			source: "Quran 3:139"
		),
		Advice(
			title: "Speak to Allah Often",
			description: "And when My servants ask you, [O Muḥammad], concerning Me - indeed I am near. I respond to the invocation of the supplicant when he calls upon Me. So let them respond to Me [by obedience] and believe in Me that they may be [rightly] guided.",
			emotion: .hurt,
			source: "Quran 2:186"
		),
		Advice(
			title: "Even Prophets Were Hurt",
			description: "Remember how the Prophet ﷺ was injured in Ta'if, yet still made du‘aa for those who harmed him. Mercy over revenge.",
			emotion: .hurt,
			source: "Ibn Hisham’s Seerah"
		),
		Advice(
			title: "Allah's Presence Brings Peace",
			description: "Imām Ibn al-Qayyim رحمه الله said:\n\n\"When Allah is with you, then all the worries, grief, and sadness disappear; no grief can remain when Allah is with the slave.\"",
			emotion: .hurt,
			source: "Ad-Daa' wa Ad-Dawaa, p. 269"
		)
	]
}
