import 'package:flutter_test/flutter_test.dart';
import 'package:travel_manager/models/booking_model.dart';
import 'package:travel_manager/models/hotel_model.dart';

void main() {
  group('Hotel', () {
    test('survives a toMap/fromMap round trip', () {
      final hotel = Hotel(
        id: 1,
        name: 'Hotel Danieli',
        address: 'Riva degli Schiavoni',
        price: 420.0,
        imageUrl: 'assets/images/hotel0.jpg',
        latitude: 45.4337,
        longitude: 12.3423,
        destinationCity: 'Venice',
      );

      final copy = Hotel.fromMap(hotel.toMap());

      expect(copy.id, hotel.id);
      expect(copy.name, hotel.name);
      expect(copy.price, hotel.price);
      expect(copy.latitude, hotel.latitude);
      expect(copy.destinationCity, hotel.destinationCity);
    });

    test('accepts integer prices and coordinates from SQLite', () {
      final hotel = Hotel.fromMap({
        'id': 2,
        'name': 'Test',
        'address': 'Somewhere',
        'price': 150, // SQLite can hand back whole numbers as int
        'imageUrl': '',
        'latitude': 0,
        'longitude': 0,
        'destinationCity': 'Paris',
      });

      expect(hotel.price, 150.0);
      expect(hotel.latitude, 0.0);
    });
  });

  group('Booking', () {
    Map<String, dynamic> bookingMap(Object totalPrice) => {
          'id': 7,
          'hotelName': 'Hotel Danieli',
          'hotelImageUrl': 'assets/images/hotel0.jpg',
          'userName': 'Ada',
          'userEmail': 'ada@example.com',
          'checkInDate': '2026-12-01',
          'checkOutDate': '2026-12-04',
          'guests': 2,
          'specialRequests': '',
          'totalPrice': totalPrice,
        };

    test('converts an integer totalPrice to double', () {
      expect(Booking.fromMap(bookingMap(1260)).totalPrice, 1260.0);
    });

    test('survives a toMap/fromMap round trip', () {
      final booking = Booking.fromMap(bookingMap(1260.5));
      expect(Booking.fromMap(booking.toMap()).toMap(), booking.toMap());
    });
  });
}
