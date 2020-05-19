### Get User Defined contants

```sh
<?php
$const = get_defined_constants(true);
print_r($const['user']);
?>
```

### Get PHP Timezones

```sh
<?php
function list_timezones($timezone = null)
{
    if (!empty($timezone)) {
        try
        {
            $dt = new DateTime('now', new DateTimeZone($timezone));
            return ['abbr' => $dt->format('T'), 'timezone' => $timezone, 'difference' => 'GMT' . $dt->format('P')];
        } catch (Exeption $e) {
            return null;
        }
        exit;
    }

    $abbrs = [];
    $tzlist = DateTimeZone::listIdentifiers(DateTimeZone::ALL);
    foreach ($tzlist as $tz) {
        $dt = new DateTime('now', new DateTimeZone($tz));
        $abbrs[] = ['abbr' => $dt->format('T'), 'timezone' => $tz, 'difference' => 'GMT' . $dt->format('P')];
    }
    return $abbrs;
}
?>
```
