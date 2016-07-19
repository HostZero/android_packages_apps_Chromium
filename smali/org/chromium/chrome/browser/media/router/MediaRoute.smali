.class public Lorg/chromium/chrome/browser/media/router/MediaRoute;
.super Ljava/lang/Object;
.source "MediaRoute.java"


# instance fields
.field public final id:Ljava/lang/String;

.field public final presentationId:Ljava/lang/String;

.field public final sinkId:Ljava/lang/String;

.field public final sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p3, p1, p2}, Lorg/chromium/chrome/browser/media/router/MediaRoute;->createMediaRouteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/media/router/MediaRoute;->id:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/MediaRoute;->sinkId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/MediaRoute;->sourceId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/router/MediaRoute;->presentationId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private static createMediaRouteId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string/jumbo v1, "route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
