.class public final enum Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;
.super Ljava/lang/Enum;
.source "TabModel.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_REPARENTING:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

.field public static final enum FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_LINK"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_EXTERNAL_APP"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_CHROME_UI"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_RESTORE"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 44
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_LONGPRESS_FOREGROUND"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 50
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_LONGPRESS_BACKGROUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    const-string/jumbo v1, "FROM_REPARENTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_REPARENTING:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    .line 18
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LINK:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_EXTERNAL_APP:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_CHROME_UI:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_RESTORE:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_FOREGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_LONGPRESS_BACKGROUND:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->FROM_REPARENTING:Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->$VALUES:[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->$VALUES:[Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/tabmodel/TabModel$TabLaunchType;

    return-object v0
.end method
