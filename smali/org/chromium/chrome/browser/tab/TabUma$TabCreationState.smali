.class public final enum Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;
.super Ljava/lang/Enum;
.source "TabUma.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

.field public static final enum FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

.field public static final enum FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

.field public static final enum FROZEN_ON_RESTORE_FAILED:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

.field public static final enum LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

.field public static final enum LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    const-string/jumbo v1, "LIVE_IN_FOREGROUND"

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 64
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    const-string/jumbo v1, "LIVE_IN_BACKGROUND"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 65
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    const-string/jumbo v1, "FROZEN_ON_RESTORE"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 66
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    const-string/jumbo v1, "FROZEN_FOR_LAZY_LOAD"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 67
    new-instance v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    const-string/jumbo v1, "FROZEN_ON_RESTORE_FAILED"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE_FAILED:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_FOREGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->LIVE_IN_BACKGROUND:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_FOR_LAZY_LOAD:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->FROZEN_ON_RESTORE_FAILED:Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    aput-object v1, v0, v6

    sput-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->$VALUES:[Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->$VALUES:[Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/tab/TabUma$TabCreationState;

    return-object v0
.end method
