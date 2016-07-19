.class public Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;
.super Landroid/support/v7/app/ay;
.source "MediaRouteControllerDialogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/ay;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public onCreateControllerDialogFragment()Landroid/support/v7/app/ax;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory$1;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteControllerDialogFactory;)V

    return-object v0
.end method
