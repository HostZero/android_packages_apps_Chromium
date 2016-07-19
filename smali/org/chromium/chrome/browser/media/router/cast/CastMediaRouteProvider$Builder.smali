.class public Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider$Builder;
.super Ljava/lang/Object;
.source "CastMediaRouteProvider.java"

# interfaces
.implements Lorg/chromium/chrome/browser/media/router/MediaRouteProvider$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)Lorg/chromium/chrome/browser/media/router/MediaRouteProvider;
    .locals 1

    .prologue
    .line 63
    invoke-static {p1, p2}, Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;->create(Landroid/content/Context;Lorg/chromium/chrome/browser/media/router/MediaRouteManager;)Lorg/chromium/chrome/browser/media/router/cast/CastMediaRouteProvider;

    move-result-object v0

    return-object v0
.end method
