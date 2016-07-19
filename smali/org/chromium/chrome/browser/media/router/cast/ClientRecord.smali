.class public Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;
.super Ljava/lang/Object;
.source "ClientRecord.java"


# instance fields
.field public final appId:Ljava/lang/String;

.field public final autoJoinPolicy:Ljava/lang/String;

.field public final clientId:Ljava/lang/String;

.field public isConnected:Z

.field public final origin:Ljava/lang/String;

.field public pendingMessages:Ljava/util/List;

.field public final routeId:Ljava/lang/String;

.field public final tabId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->isConnected:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->pendingMessages:Ljava/util/List;

    .line 63
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->routeId:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->clientId:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->appId:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->autoJoinPolicy:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->origin:Ljava/lang/String;

    .line 68
    iput p6, p0, Lorg/chromium/chrome/browser/media/router/cast/ClientRecord;->tabId:I

    .line 69
    return-void
.end method
