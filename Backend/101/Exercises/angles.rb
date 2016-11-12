DEGREE = "\xC2\xB0"

def dms(number)

total_seconds = number * 60 * 60
degrees, remaining_seconds = total_seconds.divmod(3600)
minutes, seconds = remaining_seconds.divmod(60)
puts format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)


end









dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")