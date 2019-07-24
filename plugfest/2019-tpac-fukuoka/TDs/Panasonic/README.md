# Panasonic Thing Descriptions

## Things in Osaka lab (Video through Hangout)

![Lab Image](images/Panasonic_Osaka_Lab_Things_Arrangement.png)

- [Air Conditioner](airConditioner_p1.jsonld)
- [Robotics Cleaner](cleaner_p1.jsonld)
- [Bulletin Board 1](electricBulletinBoard_p1.jsonld)
- [Bulletin Board 2](electricBulletinBoard_p2.jsonld)
- [Philips Hue lighting](huegroup_p1.jsonld)

## Things in Fukuoka

![Bulletin Board 3](images/Panasonic_Bulletin_Board.png)

- [Bulletin Board 3](electricBulletinBoard_p3.jsonld)

## Online simulator

![Online Simulator Devices](images/Panasonic_Online_Simulator_devices.png)

(Sample TDs of [special instance](https://w3c.p-wot.com:3009) which can be shared among participants simultaneously)

- [Air Conditioner](PanaSimAirConditioner5.jsonld)
- [Robotics Cleaner](PanaSimCleaner5.jsonld)
- [Philips Hue lighting](PanaSimHueGroup5.jsonld)
- [Room lighting](PanaSimRoomLight5.jsonld)

For other instances which can be accessed exclusively at a time, see [simulator portal](https://w3c.p-wot.com:3011) (Access restricted to plugfest participants only).

## Local simulator

- Available only in TPAC 2019.

---

### Note

* ID and Password are required to get Bearer Token to access both simulator and real device API as described in our TDs, by accessing authentication server as follows (You need to do it only once since the token doesn't expire):
```
POST {authentication server URL}
{
  "id": "{ID}",
  "password": "{Password}"
}
Content-Type: application/json
```
* ID and Password are issued only to the Plugfest Participants.
