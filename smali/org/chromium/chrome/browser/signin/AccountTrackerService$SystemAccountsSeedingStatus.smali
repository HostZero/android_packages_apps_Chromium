.class final enum Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;
.super Ljava/lang/Enum;
.source "AccountTrackerService.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

.field public static final enum SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

.field public static final enum SEEDING_IN_PROGRESS:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

.field public static final enum SEEDING_NOT_STARTED:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    const-string/jumbo v1, "SEEDING_NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_NOT_STARTED:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 37
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    const-string/jumbo v1, "SEEDING_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_IN_PROGRESS:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    const-string/jumbo v1, "SEEDING_DONE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_NOT_STARTED:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_IN_PROGRESS:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->SEEDING_DONE:Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->$VALUES:[Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;
    .locals 1

    .prologue
    .line 35
    const-class v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->$VALUES:[Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/signin/AccountTrackerService$SystemAccountsSeedingStatus;

    return-object v0
.end method
