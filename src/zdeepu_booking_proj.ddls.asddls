@EndUserText.label: 'My Travel processor projection'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZDEEPU_BOOKING_PROJ
  as projection on ZDEEPU_BOOKING
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LastChangedAt,
      /* Associations */
      _BookingStatus,
      _BookingSupplement : redirected to composition child ZDEEPU_BOOKSUPPL_PROJ,
      _Carrier,
      _Connection,
      _Customer,
      _Travel            : redirected to parent ZDEEPU_TRAVEL_PROJ
}
