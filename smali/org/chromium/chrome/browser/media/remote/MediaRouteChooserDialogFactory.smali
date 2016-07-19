.class public Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;
.super Landroid/support/v7/app/ay;
.source "MediaRouteChooserDialogFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

.field private final mPlayer:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;Lorg/chromium/chrome/browser/media/remote/MediaRouteController;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/ay;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mPlayer:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    .line 33
    iput-object p2, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    .line 34
    iput-object p3, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mPlayer:Lorg/chromium/chrome/browser/media/remote/MediaRouteController$MediaStateListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)Lorg/chromium/chrome/browser/media/remote/MediaRouteController;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;->mController:Lorg/chromium/chrome/browser/media/remote/MediaRouteController;

    return-object v0
.end method


# virtual methods
.method public onCreateChooserDialogFragment()Landroid/support/v7/app/ai;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;

    invoke-direct {v0, p0}, Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory$1;-><init>(Lorg/chromium/chrome/browser/media/remote/MediaRouteChooserDialogFactory;)V

    return-object v0
.end method
