import 'dart:convert';

IncidenceModel incidenceModelFromJson(String str) => IncidenceModel.fromJson(json.decode(str));
String incidenceModelToJson(IncidenceModel data) => json.encode(data.toJson());

class IncidenceModel {
    final String app;
    final String apiVersion;
    final String release;
    final DateTime datetime;
    final String message;
    final int code;
    final Data data;

    IncidenceModel({
        required this.app,
        required this.apiVersion,
        required this.release,
        required this.datetime,
        required this.message,
        required this.code,
        required this.data,
    });

    factory IncidenceModel.fromJson(Map<String, dynamic> json) => IncidenceModel(
        app: json["app"],
        apiVersion: json["api_version"],
        release: json["release"],
        datetime: DateTime.parse(json["datetime"]),
        message: json["message"],
        code: json["code"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "app": app,
        "api_version": apiVersion,
        "release": release,
        "datetime": datetime.toIso8601String(),
        "message": message,
        "code": code,
        "data": data.toJson(),
    };
}

class Data {
    final int id;
    final int routeHistoryId;
    final String incidenceType;
    final String message;
    final bool isActive;
    final int commentsCount;
    final int likesCount;
    final int driverId;
    final int monitorId;
    final Driver driver;
    final Driver monitor;
    final RouteHistory routeHistory;
    final List<dynamic> comments;

    Data({
        required this.id,
        required this.routeHistoryId,
        required this.incidenceType,
        required this.message,
        required this.isActive,
        required this.commentsCount,
        required this.likesCount,
        required this.driverId,
        required this.monitorId,
        required this.driver,
        required this.monitor,
        required this.routeHistory,
        required this.comments,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        routeHistoryId: json["route_history_id"],
        incidenceType: json["incidence_type"],
        message: json["message"],
        isActive: json["is_active"] ?? false,  // Proporcionar valor predeterminado
        commentsCount: json["comments_count"],
        likesCount: json["likes_count"],
        driverId: json["driver_id"],
        monitorId: json["monitor_id"],
        driver: Driver.fromJson(json["driver"]),
        monitor: Driver.fromJson(json["monitor"]),
        routeHistory: RouteHistory.fromJson(json["route_history"]),
        comments: List<dynamic>.from(json["comments"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "route_history_id": routeHistoryId,
        "incidence_type": incidenceType,
        "message": message,
        "is_active": isActive,
        "comments_count": commentsCount,
        "likes_count": likesCount,
        "driver_id": driverId,
        "monitor_id": monitorId,
        "driver": driver.toJson(),
        "monitor": monitor.toJson(),
        "route_history": routeHistory.toJson(),
        "comments": List<dynamic>.from(comments.map((x) => x)),
    };
}

class Driver {
    final int id;
    final String firstName;
    final String lastName;
    final String email;
    final String phone;
    final String address;
    final String coordinates;
    final String genre;
    final bool status;
    final String profilePicture;
    final String userType;

    Driver({
        required this.id,
        required this.firstName,
        required this.lastName,
        required this.email,
        required this.phone,
        required this.address,
        required this.coordinates,
        required this.genre,
        required this.status,
        required this.profilePicture,
        required this.userType,
    });

    factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        address: json["address"],
        coordinates: json["coordinates"],
        genre: json["genre"],
        status: json["status"] ?? true,  // Proporcionar valor predeterminado
        profilePicture: json["profile_picture"],
        userType: json["user_type"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "address": address,
        "coordinates": coordinates,
        "genre": genre,
        "status": status,
        "profile_picture": profilePicture,
        "user_type": userType,
    };
}

class RouteHistory {
    final int id;
    final int routeId;
    final int vehicleId;
    final int driverId;
    final int monitorId;
    final String startAt;
    final String endAt;
    final bool onRoute;
    final String shift;
    final int passengerCount;
    final bool hasIncidence;

    RouteHistory({
        required this.id,
        required this.routeId,
        required this.vehicleId,
        required this.driverId,
        required this.monitorId,
        required this.startAt,
        required this.endAt,
        required this.onRoute,
        required this.shift,
        required this.passengerCount,
        required this.hasIncidence,
    });

    factory RouteHistory.fromJson(Map<String, dynamic> json) => RouteHistory(
        id: json["id"],
        routeId: json["route_id"],
        vehicleId: json["vehicle_id"],
        driverId: json["driver_id"],
        monitorId: json["monitor_id"],
        startAt: json["start_at"],
        endAt: json["end_at"],
        onRoute: json["on_route"] ?? false,  // Proporcionar valor predeterminado
        shift: json["shift"],
        passengerCount: json["passenger_count"],
        hasIncidence: json["has_incidence"] ?? false,  // Proporcionar valor predeterminado
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "route_id": routeId,
        "vehicle_id": vehicleId,
        "driver_id": driverId,
        "monitor_id": monitorId,
        "start_at": startAt,
        "end_at": endAt,
        "on_route": onRoute,
        "shift": shift,
        "passenger_count": passengerCount,
        "has_incidence": hasIncidence,
    };
}
