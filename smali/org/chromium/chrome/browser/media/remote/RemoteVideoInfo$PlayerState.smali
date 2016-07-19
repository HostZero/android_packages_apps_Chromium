.class public final enum Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;
.super Ljava/lang/Enum;
.source "RemoteVideoInfo.java"


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum ERROR:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

.field public static final enum STOPPED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v3}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->STOPPED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 22
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "LOADING"

    invoke-direct {v0, v1, v4}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v5}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 28
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v6}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 31
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->ERROR:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 35
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "INVALIDATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 38
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    const-string/jumbo v1, "FINISHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->STOPPED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->LOADING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PLAYING:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->PAUSED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->ERROR:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->INVALIDATED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->FINISHED:Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->$VALUES:[Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    return-object v0
.end method

.method public static values()[Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->$VALUES:[Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    invoke-virtual {v0}, [Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/chrome/browser/media/remote/RemoteVideoInfo$PlayerState;

    return-object v0
.end method
