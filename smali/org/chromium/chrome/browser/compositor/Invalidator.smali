.class public Lorg/chromium/chrome/browser/compositor/Invalidator;
.super Ljava/lang/Object;
.source "Invalidator.java"


# instance fields
.field private mHost:Lorg/chromium/chrome/browser/compositor/Invalidator$Host;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public invalidate(Lorg/chromium/chrome/browser/compositor/Invalidator$Client;)V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/Invalidator;->mHost:Lorg/chromium/chrome/browser/compositor/Invalidator$Host;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lorg/chromium/chrome/browser/compositor/Invalidator;->mHost:Lorg/chromium/chrome/browser/compositor/Invalidator$Host;

    invoke-interface {v0, p1}, Lorg/chromium/chrome/browser/compositor/Invalidator$Host;->deferInvalidate(Lorg/chromium/chrome/browser/compositor/Invalidator$Client;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-interface {p1}, Lorg/chromium/chrome/browser/compositor/Invalidator$Client;->doInvalidate()V

    goto :goto_0
.end method

.method public set(Lorg/chromium/chrome/browser/compositor/Invalidator$Host;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lorg/chromium/chrome/browser/compositor/Invalidator;->mHost:Lorg/chromium/chrome/browser/compositor/Invalidator$Host;

    .line 40
    return-void
.end method
