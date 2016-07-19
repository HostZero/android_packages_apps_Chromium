.class public final enum Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;
.super Ljava/lang/Enum;
.source "IntentHandler.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum CHROME:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum FACEBOOK:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum GMAIL:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum GSA:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum HANGOUTS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum INDEX_BOUNDARY:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum LINE:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum MESSENGER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum NEWS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum OTHER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum PLUS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum TWITTER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

.field public static final enum WHATSAPP:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 147
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->OTHER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 148
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "GMAIL"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GMAIL:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 149
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "FACEBOOK"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->FACEBOOK:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 150
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "PLUS"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->PLUS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 151
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "TWITTER"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->TWITTER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 152
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "CHROME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->CHROME:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 153
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "HANGOUTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->HANGOUTS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 154
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "MESSENGER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->MESSENGER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 155
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "NEWS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->NEWS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 156
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "LINE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->LINE:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 157
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "WHATSAPP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->WHATSAPP:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 158
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "GSA"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GSA:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 159
    new-instance v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    const-string/jumbo v1, "INDEX_BOUNDARY"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->INDEX_BOUNDARY:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    .line 146
    const/16 v0, 0xd

    new-array v0, v0, [Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->OTHER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GMAIL:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->FACEBOOK:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->PLUS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->TWITTER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->CHROME:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->HANGOUTS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->MESSENGER:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->NEWS:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->LINE:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->WHATSAPP:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->GSA:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->INDEX_BOUNDARY:Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->$VALUES:[Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;
    .locals 1

    .prologue
    .line 146
    const-class v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->$VALUES:[Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/IntentHandler$ExternalAppId;

    return-object v0
.end method
