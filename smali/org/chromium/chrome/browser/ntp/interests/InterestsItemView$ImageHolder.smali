.class Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;
.super Ljava/lang/Object;
.source "InterestsItemView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCallbacks:Lorg/chromium/base/ObserverList;

.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 251
    const-class v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mCallbacks:Lorg/chromium/base/ObserverList;

    return-void
.end method


# virtual methods
.method public addListener(Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mCallbacks:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p1}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 274
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;->onImageDownloaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public set(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 257
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_0
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mImage:Landroid/graphics/drawable/Drawable;

    .line 259
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mUrl:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mCallbacks:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;

    .line 262
    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageDownloadedCallback;->onImageDownloaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$ImageHolder;->mCallbacks:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->clear()V

    .line 266
    return-void
.end method
