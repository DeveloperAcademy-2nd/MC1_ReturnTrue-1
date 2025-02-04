//
//  File 2.swift
//  
//
//  Created by 이승준 on 2023/03/28.
//

import SwiftUI

struct leftRectangle : View {
    @State private var isChecked = false
    
    var title: String?
    var price: String?
    var img: Image?
    var company: String?
    var deliveryFee: String
    var personColor: String?
    
    init(isChecked: Bool = false, title: String? = nil, price: String? = nil, img: Image? = nil, company: String? = nil, deliveryFee: String = "3000원", personColor: String = "화이트") {
        self.isChecked = isChecked
        self.title = title
        self.price = price
        self.img = img
        self.company = company
        self.deliveryFee = deliveryFee
        self.personColor = personColor
    }
    
    var body : some View {
        
        VStack{
            VStack{
                //Spacer()
                Text(self.company ?? "ibizashop 배송")
                // 어떨때는 . , :
                    .font(.system(size: 20, weight: .medium, design: .default))
                    .padding(.top,12.0)
            }
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.gamLightGray1)
            
            HStack(alignment:.top){
                VStack{
                    Image(systemName: isChecked ? "checkmark.square" : "checkmark.square.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width:27)
                        .padding([.leading, .bottom], 15)
                        .foregroundColor(isChecked ? .gamDarkGray1 : . mainColor)
                        .onTapGesture {
                            isChecked.toggle()
                        }
                }
                
                VStack{
                    HStack(alignment:.top){
                        Image("MyImage")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                            .cornerRadius(10)
                        
                        Text(self.title ?? "[ibiza] \n접이식빨래 양말건조대")
                            .fixedSize(horizontal: false, vertical: true)
                            .frame(maxWidth: .infinity, alignment:.leading)
                            .font(.system(size: 22, weight: .bold, design: .rounded))
                            .foregroundColor(.gamDarkGray2)
                            .padding()
                        Spacer()
                        Image(systemName: "xmark")
                            .font(.system(size: 20, weight: .medium))
                            .foregroundColor(.gamDarkGray2)
                            .padding()
                        
                        
                        
                    }
                    
                    VStack{
                        VStack(spacing: 15){
                            HStack{
                                Text(self.personColor ?? "화이트")
                                    .font(.system(size: 20))
                                Spacer()
                                Image(systemName: "xmark")
                                    .font(.system(size: 15))
                                    .foregroundColor(.gamDarkGray1)
                            }
                            HStack{
                                Text("1명")
                                Spacer()
                                Text(self.price ?? "8,900원")
                                    .font(.system(size: 20, weight: .bold))
                                    .foregroundColor(.gamDarkGray2)
                            }
                        }
                        .padding()
                        .background(Color.gamLightGray0)
                        
                        HStack{
                            Text("옵션변경")
                                .foregroundColor(.gamDarkGray2)
                                .padding(.trailing,8)
                            Text("바로구매")
                                .foregroundColor(.gamDarkGray2)
                            Spacer()
                            Text(self.price ?? "8,900원")
                                .font(.system(size: 20, weight: .bold))
                        }
                        .padding(.vertical)
                    }
                    .font(.system(size: 16, weight: .regular, design: .rounded))
                }
                
            }
            .padding(.top, 10)
            .padding(.trailing)
            
            Rectangle()
                .frame(height: 3)
                .foregroundColor(Color.gamLightGray0)
            VStack(spacing:6){
                Text("배송비 " + self.deliveryFee)
                    .font(.system(size: 20))
                
                if deliveryFee != "무료" {
                    Text("묶음배송 상품 61,100원 추가시 무료배송")
                        .font(.system(size: 16, weight: .medium))
                        .foregroundColor(.gamDarkGray0)
                    Text("묶음배송 상품 추가하기 > ")
                        .font(.system(size:18, weight: .bold))
                        .foregroundColor(Color.mainColor)
                }
            }
            .padding(.bottom, 10)
        }
        
        .frame(maxWidth: .infinity, maxHeight: 500)
        .background(.white)
        .cornerRadius(10)
        .padding([.top, .leading, .trailing], 15)
        
        
        
        
    }
    
}


