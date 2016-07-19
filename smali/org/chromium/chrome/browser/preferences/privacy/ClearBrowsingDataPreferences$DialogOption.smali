.class public final enum Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;
.super Ljava/lang/Enum;
.source "ClearBrowsingDataPreferences.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

.field public static final enum CLEAR_CACHE:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

.field public static final enum CLEAR_COOKIES_AND_SITE_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

.field public static final enum CLEAR_FORM_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

.field public static final enum CLEAR_HISTORY:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

.field public static final enum CLEAR_PASSWORDS:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;


# instance fields
.field private final mDataType:I

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    const-string/jumbo v1, "CLEAR_HISTORY"

    const-string/jumbo v2, "clear_history_checkbox"

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_HISTORY:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 126
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    const-string/jumbo v1, "CLEAR_COOKIES_AND_SITE_DATA"

    const-string/jumbo v2, "clear_cookies_checkbox"

    invoke-direct {v0, v1, v4, v5, v2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_COOKIES_AND_SITE_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 127
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    const-string/jumbo v1, "CLEAR_CACHE"

    const-string/jumbo v2, "clear_cache_checkbox"

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_CACHE:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 128
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    const-string/jumbo v1, "CLEAR_PASSWORDS"

    const-string/jumbo v2, "clear_passwords_checkbox"

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_PASSWORDS:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 129
    new-instance v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    const-string/jumbo v1, "CLEAR_FORM_DATA"

    const-string/jumbo v2, "clear_form_data_checkbox"

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_FORM_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    .line 124
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_HISTORY:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_COOKIES_AND_SITE_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_CACHE:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_PASSWORDS:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->CLEAR_FORM_DATA:Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    aput-object v1, v0, v7

    sput-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->$VALUES:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput p3, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->mDataType:I

    .line 136
    iput-object p4, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->mPreferenceKey:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;
    .locals 1

    .prologue
    .line 124
    const-class v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->$VALUES:[Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;

    return-object v0
.end method


# virtual methods
.method public final getDataType()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->mDataType:I

    return v0
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataPreferences$DialogOption;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method
