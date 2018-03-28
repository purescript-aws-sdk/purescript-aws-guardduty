## Module AWS.GuardDuty

Assess, monitor, manage, and remediate security issues across your AWS infrastructure, applications, and data.

#### `Service`

``` purescript
newtype Service
  = Service Service
```

#### `service`

``` purescript
service :: forall eff. Options -> Eff (exception :: EXCEPTION | eff) Service
```


