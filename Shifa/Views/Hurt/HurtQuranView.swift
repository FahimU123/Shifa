//
//  HurtQuranView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct HurtQuranView: View {
    let emotion: Emotion
    
    private var quranicVerses = [
        "Quran 3:134": "Family of Imran (3:134) - Who spend [in the cause of Allāh] during ease and hardship and who restrain anger and who pardon the people - and Allāh loves the doers of good.\nٱلَّذِينَ يُنفِقُونَ فِى ٱلسَّرَّآءِ وَٱلضَّرَّآءِ وَٱلْكَـٰظِمِينَ ٱلْغَيْظَ وَٱلْعَافِينَ عَنِ ٱلنَّاسِ ۗ وَٱللَّهُ يُحِبُّ ٱلْمُحْسِنِينَ",
        
        "Quran 42:37": "Consultation (42:37) - And those who avoid the major sins and immoralities, and when they are angry, they forgive.\nوَٱلَّذِينَ يَجْتَنِبُونَ كَبَـٰٓئِرَ ٱلْإِثْمِ وَٱلْفَوَٰحِشَ وَإِذَا مَا غَضِبُوا۟ هُمْ يَغْفِرُونَ",
        
        "Quran 7:199": "The Heights (7:199) - Show forgiveness, enjoin what is good, and turn away from the ignorant.\nخُذِ ٱلْعَفْوَ وَأْمُرْ بِٱلْعُرْفِ وَأَعْرِضْ عَنِ ٱلْجَـٰهِلِينَ",
        
        "Quran 41:34": "Explained in Detail (41:34) - Repel evil with that which is better; then indeed the one whom between you and him was enmity will become as though he was a devoted friend.\nوَلاَ تَسْتَوِي ٱلْحَسَنَةُ وَلاَ ٱلسَّيِّئَةُ ٱدْفَعْ بِٱلَّتِي هِيَ أَحْسَنُ فَإِذَا ٱلَّذِي بَيْنَكَ وَبَيْنَهُ عَدَاوَةٌ كَأَنَّهُ وَلِيٌّ حَمِيمٌ",
        
        "Quran 24:22": "The Light (24:22) - Let them pardon and overlook. Would you not like that Allah should forgive you?\nوَلْيَعْفُوا۟ وَلْيَصْفَحُوٓا۟ أَلاَ تُحِبُّونَ أَن يَغْفِرَ ٱللَّهُ لَكُمْ",
        
        "Quran 16:126": "The Bee (16:126) - And if you punish, then punish with the like of that with which you were afflicted. But if you are patient, it is better for those who are patient.\nوَإِنْ عَاقَبْتُمْ فَعَاقِبُوا۟ بِمِثْلِ مَا عُوقِبْتُم بِهِۦ وَلَئِن صَبَرْتُمْ لَهُوَ خَيْرٌۭ لِّلصَّـٰبِرِينَ",
        
        "Quran 23:96": "The Believers (23:96) - Repel evil with that which is better. We are most knowing of what they describe.\nٱدْفَعْ بِٱلَّتِى هِىَ أَحْسَنُ ٱلسَّيِّئَةَ نَحْنُ أَعْلَمُ بِمَا يَصِفُونَ",
        
        "Quran 28:54": "The Stories (28:54) - Those will be given their reward twice for what they patiently endured and [because] they avert evil through good.\nأُو۟لَـٰٓئِكَ يُؤْتَوْنَ أَجْرَهُم مَّرَّتَيْنِ بِمَا صَبَرُوا۟ وَيَدْرَءُونَ بِٱلْحَسَنَةِ ٱلسَّيِّئَةَ"
    ]
    
    @State private var randomVerse: (key: String, value: String)
    
    init(emotion: Emotion) {
        self.emotion = emotion
        let initialVerses = [
            "Quran 3:134": "Family of Imran (3:134) - Who spend [in the cause of Allāh] during ease and hardship and who restrain anger and who pardon the people - and Allāh loves the doers of good.\nٱلَّذِينَ يُنفِقُونَ فِى ٱلسَّرَّآءِ وَٱلضَّرَّآءِ وَٱلْكَـٰظِمِينَ ٱلْغَيْظَ وَٱلْعَافِينَ عَنِ ٱلنَّاسِ ۗ وَٱللَّهُ يُحِبُّ ٱلْمُحْسِنِينَ",
            "Quran 42:37": "Consultation (42:37) - And those who avoid the major sins and immoralities, and when they are angry, they forgive.\nوَٱلَّذِينَ يَجْتَنِبُونَ كَبَـٰٓئِرَ ٱلْإِثْمِ وَٱلْفَوَٰحِشَ وَإِذَا مَا غَضِبُوا۟ هُمْ يَغْفِرُونَ",
            "Quran 7:199": "The Heights (7:199) - Show forgiveness, enjoin what is good, and turn away from the ignorant.\nخُذِ ٱلْعَفْوَ وَأْمُرْ بِٱلْعُرْفِ وَأَعْرِضْ عَنِ ٱلْجَـٰهِلِينَ"
        ]
        self._randomVerse = State(initialValue: initialVerses.randomElement() ??
            ("Quran 3:134", "Family of Imran (3:134) - Who spend [in the cause of Allāh] during ease and hardship and who restrain anger and who pardon the people - and Allāh loves the doers of good.\nٱلَّذِينَ يُنفِقُونَ فِى ٱلسَّرَّآءِ وَٱلضَّرَّآءِ وَٱلْكَـٰظِمِينَ ٱلْغَيْظَ وَٱلْعَافِينَ عَنِ ٱلنَّاسِ ۗ وَٱللَّهُ يُحِبُّ ٱلْمُحْسِنِينَ"))
    }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)

            LinearGradient(
                gradient: emotion.gradient,
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: 350, height: 700)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(radius: 4)
            
            VStack(spacing: 20) {
                Image(systemName: "book.fill")
                    .font(.system(size: 100))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [.white, .white.opacity(0.7)],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .shadow(radius: 4)
                
                Text("The Quran Says:")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(.white)
                
                VStack(alignment: .leading, spacing: 10) {
                    Text(randomVerse.key)
                        .font(.system(size: 18, weight: .bold, design: .serif))
                        .foregroundColor(.white)
                    
                    let parts = randomVerse.value.components(separatedBy: "\n")
                    if parts.count > 1 {
                        Text(parts[0]) // English translation
                            .font(.system(size: 16, design: .serif))
                            .multilineTextAlignment(.leading)
                        
                        Text(parts[1]) // Arabic text
                            .font(.system(size: 20, design: .serif))
                            .multilineTextAlignment(.trailing)
                            .environment(\.layoutDirection, .rightToLeft)
                    }
                }
                .padding()
                .frame(maxWidth: 300)
                .background(Color.white.opacity(0.2))
                .cornerRadius(15)
                .foregroundColor(.white)
                .shadow(radius: 2)
                
                Button {
                    randomVerse = quranicVerses.randomElement() ??
                        ("Quran 3:134", "Family of Imran (3:134) - Who spend [in the cause of Allāh] during ease and hardship and who restrain anger and who pardon the people - and Allāh loves the doers of good.\nٱلَّذِينَ يُنفِقُونَ فِى ٱلسَّرَّآءِ وَٱلضَّرَّآءِ وَٱلْكَـٰظِمِينَ ٱلْغَيْظَ وَٱلْعَافِينَ عَنِ ٱلنَّاسِ ۗ وَٱللَّهُ يُحِبُّ ٱلْمُحْسِنِينَ")
                } label: {
                    Text("New Verse")
                }
                .font(.system(size: 14, weight: .medium))
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(15)
            }
        }
    }
}

//#Preview {
//    HurtQuranView()
//}
