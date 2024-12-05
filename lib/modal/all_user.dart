// To parse this JSON data, do
//
//     final allUser = allUserFromJson(jsonString);

import 'dart:convert';

AllUser allUserFromJson(String str) => AllUser.fromJson(json.decode(str));

String allUserToJson(AllUser data) => json.encode(data.toJson());

class AllUser {
  final String? message;
  final String? status;
  final String? success;
  final int? total;
  final List<AllUserElement>? allUsers;
  final String? profileLength;
  final int? viewedCount;
  final int? checkViewed;

  AllUser({
    this.message,
    this.status,
    this.success,
    this.total,
    this.allUsers,
    this.profileLength,
    this.viewedCount,
    this.checkViewed,
  });

  factory AllUser.fromJson(Map<String, dynamic> json) => AllUser(
        message: json["message"],
        status: json["status"].toString(),
        success: json["success"].toString(),
        total: json["total"],
        allUsers: json["all_users"] == null
            ? []
            : List<AllUserElement>.from(
                json["all_users"]!.map((x) => AllUserElement.fromJson(x))),
        profileLength: json["profile_length"],
        viewedCount: json["viewed_count"],
        checkViewed: json["checkViewed"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "status": status,
        "success": success,
        "total": total,
        "all_users": allUsers == null
            ? []
            : List<dynamic>.from(allUsers!.map((x) => x.toJson())),
        "profile_length": profileLength,
        "viewed_count": viewedCount,
        "checkViewed": checkViewed,
      };
}

class AllUserElement {
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
  final String? socialId;
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
  final String? twitterLink;
  final String? instagramLink;
  final String? facebookLink;
  final int? completeProfileStatus;
  final DateTime? createdAt;
  final int? blockStatus;
  final String? latitude;
  final String? longitude;
  final DateTime? lastSeen;
  final String? sexualOrientation;
  final String? linkedInLink;
  final String? subGender;
  final String? countryCode;
  final int? isBlocked;
  final int? isDelete;
  final int? isReviewed;
  final int? isVerified;
  final String? verificationImage;
  final String? language;
  final bool? exploreStatus;
  final bool? distanceStatus;
  final int? viewMe;
  final int? explore;
  final String? distance;
  final List<String>? images;
  final String? favoritesUser;
  final bool? select;
  final bool? admin;
  final int? albumId;
  final int? distanceInMeters;

  AllUserElement({
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
    this.exploreStatus,
    this.distanceStatus,
    this.viewMe,
    this.explore,
    this.distance,
    this.images,
    this.favoritesUser,
    this.select,
    this.admin,
    this.albumId,
    this.distanceInMeters,
  });

  factory AllUserElement.fromJson(Map<String, dynamic> json) => AllUserElement(
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
        exploreStatus: json["explore_status"],
        distanceStatus: json["distance_status"],
        viewMe: json["view_me"],
        explore: json["explore"],
        distance: json["distance"],
        images: json["images"] == null
            ? []
            : List<String>.from(json["images"]!.map((x) => x)),
        favoritesUser: json["favorites_user"],
        select: json["select"],
        admin: json["admin"],
        albumId: json["album_id"],
        distanceInMeters: json["distanceInMeters"],
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
        "explore_status": exploreStatus,
        "distance_status": distanceStatus,
        "view_me": viewMe,
        "explore": explore,
        "distance": distance,
        "images":
            images == null ? [] : List<dynamic>.from(images!.map((x) => x)),
        "favorites_user": favoritesUser,
        "select": select,
        "admin": admin,
        "album_id": albumId,
        "distanceInMeters": distanceInMeters,
      };
}
