.class public Lorg/chromium/chrome/browser/preferences/DocumentModeManager;
.super Ljava/lang/Object;
.source "DocumentModeManager.java"


# static fields
.field private static final DEFAULT_TABBED_MODE_DEVICES:[Ljava/lang/String;

.field public static final OPTED_OUT_OF_DOCUMENT_MODE:I = 0x2

.field public static final OPT_IN_TO_DOCUMENT_MODE:I = 0x0

.field public static final OPT_OUT_CLEAN_UP_PENDING:Ljava/lang/String; = "opt_out_clean_up_pending"

.field public static final OPT_OUT_PROMO_DISMISSED:I = 0x1

.field public static final OPT_OUT_SHOWN_COUNT:Ljava/lang/String; = "opt_out_shown_count"

.field public static final OPT_OUT_STATE:Ljava/lang/String; = "opt_out_state"

.field public static final OPT_OUT_STATE_UNSET:I = -0x1

.field private static sManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;


# instance fields
.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/16 v0, 0x83

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "GT-I9505G"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SC-04E"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "GT-I9500"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SCH-I959"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "SHV-E300K"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "SHV-E300L"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "SHV-E300S"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "GT-I9505"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "GT-I9508"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "GT-I9508C"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "GT-I9508V"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "SAMSUNG-SGH-I337Z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "SAMSUNG-SGH-I337"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "SGH-I337M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "SGH-M919V"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "SGH-M919N"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "SCH-R970C"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "SCH-R970X"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "SCH-I545L"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "SCH-I545PP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "SPH-L720T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "SPH-L720"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "SM-S975L"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "SGH-S970G"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "SGH-M919"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "SCH-R970"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "SCH-I545"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "GT-I9507"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "GT-I9507V"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "GT-I9515"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "GT-I9515L"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "GT-I9505X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "GT-I9506"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "SHV-E330K"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "SHV-E330L"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "GT-I9295"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "SAMSUNG-SGH-I537"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "SGH-I537"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "SHV-E470S"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "GT-I9502"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string/jumbo v2, "SHV-E330S"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string/jumbo v2, "GT-I9190"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string/jumbo v2, "GT-I9192"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string/jumbo v2, "GT-I9195"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string/jumbo v2, "GT-I9195L"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string/jumbo v2, "GT-I9195T"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string/jumbo v2, "GT-I9195X"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v2, "GT-I9197"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v2, "SGH-I257M"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string/jumbo v2, "SHV-E370K"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v2, "SHV-E370D"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v2, "SCH-I435L"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "SPH-L520"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "SCH-R890"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "SCH-I435"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "GT-I9192I"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string/jumbo v2, "GT-I9195I"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string/jumbo v2, "SAMSUNG-SGH-I257"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string/jumbo v2, "SM-C101"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v2, "SAMSUNG-SM-C105A"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string/jumbo v2, "SM-C105L"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string/jumbo v2, "SM-C105S"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string/jumbo v2, "SM-C105K"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v2, "SM-C105"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "SC-02E"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "GT-N7100"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string/jumbo v2, "GT-N7100T"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string/jumbo v2, "GT-N7102"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string/jumbo v2, "GT-N7108"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string/jumbo v2, "SCH-N719"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string/jumbo v2, "GT-N7102"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string/jumbo v2, "GT-N7102I"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string/jumbo v2, "GT-N7105"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string/jumbo v2, "GT-N7105T"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string/jumbo v2, "SAMSUNG-SGH-I317"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string/jumbo v2, "SGH-I317M"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string/jumbo v2, "SGH-T889V"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string/jumbo v2, "GT-N7108D"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string/jumbo v2, "SC-02E"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string/jumbo v2, "SHV-E250K"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string/jumbo v2, "SHV-E250L"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string/jumbo v2, "SHV-E250S"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "SPH-L900"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "SGH-T889"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "SCH-R950"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "SCH-I605"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "SAMSUNG-SGH-I317"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "SC-02F"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "SCL22"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "SM-N900"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "SM-N9000Q"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "SM-N9005"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string/jumbo v2, "SM-N9006"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string/jumbo v2, "SM-N9007"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string/jumbo v2, "SM-N9008V"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v2, "SM-N9009"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string/jumbo v2, "SM-N900U"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string/jumbo v2, "SAMSUNG-SM-N900A"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "SM-N900W8"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string/jumbo v2, "SM-N900K"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "SM-N900L"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string/jumbo v2, "SM-N900S"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "SM-N900P"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string/jumbo v2, "SM-N900T"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "SM-N900R4"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "SM-N900V"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string/jumbo v2, "SM-N9007"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string/jumbo v2, "SM-N9002"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string/jumbo v2, "SM-N9008"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string/jumbo v2, "SM-N750K"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string/jumbo v2, "SM-N750L"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string/jumbo v2, "SM-N750S"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string/jumbo v2, "SM-N750"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v2, "SM-N7500Q"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v2, "SM-N7502"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v2, "SM-N7505"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v2, "SM-N7505L"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "SM-N7507"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "HTC ONE DUAL SIM"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "HTC 801E"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v2, "HTC ONE"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v2, "HTC ONE 801E"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v2, "HTC_PN071"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "HTC 802T"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string/jumbo v2, "HTC 802T 16GB"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string/jumbo v2, "HTC 802W"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string/jumbo v2, "HTC 802D"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "HTC ONE DUAL 802D"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string/jumbo v2, "HTCONE"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string/jumbo v2, "HTC ONE 801E"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v2, "HTC ONE 801S"

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->DEFAULT_TABBED_MODE_DEVICES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 171
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lorg/chromium/chrome/browser/preferences/DocumentModeManager;
    .locals 1

    .prologue
    .line 179
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 180
    sget-object v0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->sManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->sManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    .line 183
    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->sManager:Lorg/chromium/chrome/browser/preferences/DocumentModeManager;

    return-object v0
.end method

.method private getOptOutState()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 259
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "opt_out_state"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 260
    if-ne v1, v3, :cond_1

    .line 261
    iget-object v1, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "migration_on_upgrade_attempted"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 263
    if-nez v1, :cond_0

    .line 264
    const/4 v0, 0x2

    .line 268
    :cond_0
    invoke-virtual {p0, v0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->setOptedOutState(I)V

    .line 270
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static isDeviceTabbedModeByDefault()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 251
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 252
    sget-object v3, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->DEFAULT_TABBED_MODE_DEVICES:[Ljava/lang/String;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 253
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    .line 255
    :cond_0
    return v0

    .line 252
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getOptOutShownCount()J
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "opt_out_shown_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOptOutStateForTesting()I
    .locals 3

    .prologue
    .line 275
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "opt_out_state"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public incrementOptOutShownCount()V
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "opt_out_shown_count"

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getOptOutShownCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 218
    return-void
.end method

.method public isOptOutCleanUpPending()Z
    .locals 3

    .prologue
    .line 231
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "opt_out_clean_up_pending"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isOptOutPromoDismissed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 197
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getOptOutState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOptedOutOfDocumentMode()Z
    .locals 2

    .prologue
    .line 190
    invoke-direct {p0}, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->getOptOutState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOptOutCleanUpPending(Z)V
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 241
    const-string/jumbo v1, "opt_out_clean_up_pending"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 243
    return-void
.end method

.method public setOptedOutState(I)V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/DocumentModeManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "opt_out_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 208
    return-void
.end method
