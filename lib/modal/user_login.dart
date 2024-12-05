// To parse this JSON data, do
//
//     final userLogin = userLoginFromJson(jsonString);

import 'dart:convert';

UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userLoginToJson(UserLogin data) => json.encode(data.toJson());

class UserLogin {
  final int? status;
  final bool? success;
  final String? message;
  final String? token;
  final UserInfo? userInfo;

  UserLogin({
    this.status,
    this.success,
    this.message,
    this.token,
    this.userInfo,
  });

  factory UserLogin.fromJson(Map<String, dynamic> json) => UserLogin(
        status: json["status"],
        success: json["success"],
        message: json["message"],
        token: json["token"],
        userInfo: json["user_info"] == null
            ? null
            : UserInfo.fromJson(json["user_info"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "success": success,
        "message": message,
        "token": token,
        "user_info": userInfo?.toJson(),
      };
}

class UserInfo {
  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final String? password;
  final String? showPassword;
  final int? age;
  final String? gender;
  final String? dob;
  final dynamic bodyType;
  final dynamic relationshipStatus;
  final String? lookingFor;
  final dynamic meetAt;
  final String? height;
  final int? weight;
  final int? onlineStatus;
  final int? incognitoMode;
  final int? appVerify;
  final int? hasPhoto;
  final int? dontDisturb;
  final dynamic socialId;
  final int? socialLogin;
  final int? chatNotification;
  final int? groupNotification;
  final int? tapsNotification;
  final int? videoCallNotification;
  final String? profileImage;
  final String? phoneNumber;
  final String? fcmToken;
  final int? verifyUser;
  final int? phoneVerify;
  final int? otp;
  final int? otpForgot;
  final String? aboutMe;
  final String? country;
  final String? city;
  final String? tags;
  final String? ethnicity;
  final dynamic tribes;
  final dynamic sex;
  final String? pronouns;
  final String? relationshipType;
  final dynamic covid19;
  final String? token;
  final dynamic about;
  final String? actToken;
  final DateTime? updateAt;
  final dynamic twitterLink;
  final dynamic instagramLink;
  final dynamic facebookLink;
  final int? completeProfileStatus;
  final DateTime? createdAt;
  final int? blockStatus;
  final String? latitude;
  final String? longitude;
  final DateTime? lastSeen;
  final String? sexualOrientation;
  final dynamic linkedInLink;
  final String? subGender;
  final String? countryCode;
  final int? isBlocked;
  final int? isDelete;
  final int? isReviewed;
  final int? isVerified;
  final dynamic verificationImage;
  final String? language;

  UserInfo({
    this.id,
    this.name,
    this.username,
    this.email,
    this.password,
    this.showPassword,
    this.age,
    this.gender,
    this.dob,
    this.bodyType,
    this.relationshipStatus,
    this.lookingFor,
    this.meetAt,
    this.height,
    this.weight,
    this.onlineStatus,
    this.incognitoMode,
    this.appVerify,
    this.hasPhoto,
    this.dontDisturb,
    this.socialId,
    this.socialLogin,
    this.chatNotification,
    this.groupNotification,
    this.tapsNotification,
    this.videoCallNotification,
    this.profileImage,
    this.phoneNumber,
    this.fcmToken,
    this.verifyUser,
    this.phoneVerify,
    this.otp,
    this.otpForgot,
    this.aboutMe,
    this.country,
    this.city,
    this.tags,
    this.ethnicity,
    this.tribes,
    this.sex,
    this.pronouns,
    this.relationshipType,
    this.covid19,
    this.token,
    this.about,
    this.actToken,
    this.updateAt,
    this.twitterLink,
    this.instagramLink,
    this.facebookLink,
    this.completeProfileStatus,
    this.createdAt,
    this.blockStatus,
    this.latitude,
    this.longitude,
    this.lastSeen,
    this.sexualOrientation,
    this.linkedInLink,
    this.subGender,
    this.countryCode,
    this.isBlocked,
    this.isDelete,
    this.isReviewed,
    this.isVerified,
    this.verificationImage,
    this.language,
  });

  factory UserInfo.fromJson(Map<String, dynamic> json) => UserInfo(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
        showPassword: json["show_password"],
        age: json["age"],
        gender: json["gender"],
        dob: json["DOB"],
        bodyType: json["body_type"],
        relationshipStatus: json["relationship_status"],
        lookingFor: json["looking_for"],
        meetAt: json["meet_at"],
        height: json["height"],
        weight: json["weight"],
        onlineStatus: json["online_status"],
        incognitoMode: json["incognito_mode"],
        appVerify: json["app_verify"],
        hasPhoto: json["has_photo"],
        dontDisturb: json["dont_disturb"],
        socialId: json["social_id"],
        socialLogin: json["social_login"],
        chatNotification: json["chat_notification"],
        groupNotification: json["group_notification"],
        tapsNotification: json["taps_notification"],
        videoCallNotification: json["video_Call_notification"],
        profileImage: json["profile_image"],
        phoneNumber: json["phone_number"],
        fcmToken: json["fcm_token"],
        verifyUser: json["verify_user"],
        phoneVerify: json["phone_verify"],
        otp: json["OTP"],
        otpForgot: json["OTP_forgot"],
        aboutMe: json["about_me"],
        country: json["country"],
        city: json["city"],
        tags: json["tags"],
        ethnicity: json["ethnicity"],
        tribes: json["tribes"],
        sex: json["sex"],
        pronouns: json["pronouns"],
        relationshipType: json["relationship_type"],
        covid19: json["covid_19"],
        token: json["token"],
        about: json["about"],
        actToken: json["act_token"],
        updateAt: json["update_at"] == null
            ? null
            : DateTime.parse(json["update_at"]),
        twitterLink: json["twitter_link"],
        instagramLink: json["instagram_link"],
        facebookLink: json["facebook_link"],
        completeProfileStatus: json["complete_profile_status"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        blockStatus: json["block_status"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        lastSeen: json["last_seen"] == null
            ? null
            : DateTime.parse(json["last_seen"]),
        sexualOrientation: json["sexual_orientation"],
        linkedInLink: json["linkedIn_link"],
        subGender: json["sub_gender"],
        countryCode: json["CountryCode"],
        isBlocked: json["is_blocked"],
        isDelete: json["is_delete"],
        isReviewed: json["is_reviewed"],
        isVerified: json["is_verified"],
        verificationImage: json["verification_image"],
        language: json["language"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "password": password,
        "show_password": showPassword,
        "age": age,
        "gender": gender,
        "DOB": dob,
        "body_type": bodyType,
        "relationship_status": relationshipStatus,
        "looking_for": lookingFor,
        "meet_at": meetAt,
        "height": height,
        "weight": weight,
        "online_status": onlineStatus,
        "incognito_mode": incognitoMode,
        "app_verify": appVerify,
        "has_photo": hasPhoto,
        "dont_disturb": dontDisturb,
        "social_id": socialId,
        "social_login": socialLogin,
        "chat_notification": chatNotification,
        "group_notification": groupNotification,
        "taps_notification": tapsNotification,
        "video_Call_notification": videoCallNotification,
        "profile_image": profileImage,
        "phone_number": phoneNumber,
        "fcm_token": fcmToken,
        "verify_user": verifyUser,
        "phone_verify": phoneVerify,
        "OTP": otp,
        "OTP_forgot": otpForgot,
        "about_me": aboutMe,
        "country": country,
        "city": city,
        "tags": tags,
        "ethnicity": ethnicity,
        "tribes": tribes,
        "sex": sex,
        "pronouns": pronouns,
        "relationship_type": relationshipType,
        "covid_19": covid19,
        "token": token,
        "about": about,
        "act_token": actToken,
        "update_at": updateAt?.toIso8601String(),
        "twitter_link": twitterLink,
        "instagram_link": instagramLink,
        "facebook_link": facebookLink,
        "complete_profile_status": completeProfileStatus,
        "created_at": createdAt?.toIso8601String(),
        "block_status": blockStatus,
        "latitude": latitude,
        "longitude": longitude,
        "last_seen": lastSeen?.toIso8601String(),
        "sexual_orientation": sexualOrientation,
        "linkedIn_link": linkedInLink,
        "sub_gender": subGender,
        "CountryCode": countryCode,
        "is_blocked": isBlocked,
        "is_delete": isDelete,
        "is_reviewed": isReviewed,
        "is_verified": isVerified,
        "verification_image": verificationImage,
        "language": language,
      };
}
