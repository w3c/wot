# [DRAFT] Analysis of Historical Data Work Item

This document gathers all information related to time series or historical data-related topics.
These include issues, use cases, and discussions in other forms.
This document will be worked on before extending the TD specification.

## Overall Description of the Topic

Some edge and cloud services can collect property value changes or event emissions for a certain time.
This data, called time series, can be collected by Consumers to display (or use in any other way) the evolution of the affordance data over time.

This topic is also known as:

- Time series
- Data Trend

## Use Cases

To find the related use cases, the [coverage document](https://github.com/w3c/wot-usecases/blob/main/USE-CASES/coverage.csv) has been used and another pass through the [use cases document](https://w3c.github.io/wot-usecases) has been made.

- [Smart Agriculture - Greenhouse Horticulture](https://w3c.github.io/wot-usecases/#smart-agriculture)
- [Smart Agriculture - Open-field Agriculture](https://w3c.github.io/wot-usecases/#smart-agriculture-openfield)
- [Smart City - Geolocation](https://w3c.github.io/wot-usecases/#smartcity-geolocation)
- [Smart City - Dashboard](https://w3c.github.io/wot-usecases/#smartcity-dashboard)
- [Smart City - Connected Building Energy Efficiency](https://w3c.github.io/wot-usecases/#connected-building-energy-efficiency)
- [Digital Twin - Digital Twin 2](https://w3c.github.io/wot-usecases/#digital-twin-2)
- [VR/AR - AR Virtual Guide](https://w3c.github.io/wot-usecases/#ar-guide)

## Issues

- [Historical Events](https://github.com/w3c/wot-thing-description/issues/892)
- [Historical Property Updates](https://github.com/w3c/wot-thing-description/issues/302#issuecomment-441235444)

## Other Discussions

These can be artifacts like presentations, meeting minutes.

## Identified Requirements

From the use cases, requirements should be identified.

## Feature Proposals

Ideally, the feature can exist only after the requirements are identified. However, if there are proposals already, they can be put here to drive discussions.

## Existing Solutions

- [Timeseries Data Submodel Specification at IDTA](https://industrialdigitaltwin.org/wp-content/uploads/2023/03/IDTA-02008-1-1_Submodel_TimeSeriesData.pdf)
  - Timepoint (A UTC time) and Duration (time after the start and last measurement) are possible. In Duration, start time is necessary
  - TAI and UTC are basic formats. Unix Time, Ephemeris Time (ET) or Barycentric Dynamical Time (TBD) are possible
  - Sampling Interval or Rate can be provided as metadata
  - Start and End Time can be provided since it also takes past values into account. Accordingly, you can also provide whether it is an ongoing timeseries or a completed one. (Ege: This is probably not relevant for us)
  - Last Update can be provided. This is probably a data and not metadata for WoT. We can give guidelines/defaults on this. Normally, it should be equal to the timestamp of the last value.
  - Each data blob is called a record.
  - First the metadata is defined and then each data point needs to respect to that. Basically, it is like providing a data schema and then the values. 
- [InfluxDB Timeseries Data oriented Database](https://www.influxdata.com/)
- [WebThings.io REST API](https://webthings.io/api/#event-resource)
- ECHONET Lite Web API has an extension of the current TD specification on this direction
  - WebAPI Specs: https://echonet.jp/wp/wp-content/uploads/pdf/General/Standard/web_api/ECHONET_Lite_Web_API_Specs_v1.1.4_e.pdf
  - WebAPI Device Specification: https://echonet.jp/wp/wp-content/uploads/pdf/General/Standard/web_api/ECHONET_Lite_Web_API_Dev_Specs_v1.4.1_e.pdf

## Reading Resources

- Overview on Wikipedia: https://en.wikipedia.org/wiki/Time_series
