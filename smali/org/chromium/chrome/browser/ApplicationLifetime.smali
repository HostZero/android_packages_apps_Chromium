.class public Lorg/chromium/chrome/browser/ApplicationLifetime;
.super Ljava/lang/Object;
.source "ApplicationLifetime.java"


# static fields
.field private static sObservers:Lorg/chromium/base/ObserverList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/chromium/base/ObserverList;

    invoke-direct {v0}, Lorg/chromium/base/ObserverList;-><init>()V

    sput-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObservers:Lorg/chromium/base/ObserverList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static addObserver(Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;)V
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0, p0}, Lorg/chromium/base/ObserverList;->addObserver(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public static terminate(Z)V
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lorg/chromium/chrome/browser/ApplicationLifetime;->sObservers:Lorg/chromium/base/ObserverList;

    invoke-virtual {v0}, Lorg/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;

    .line 46
    invoke-interface {v0, p0}, Lorg/chromium/chrome/browser/ApplicationLifetime$Observer;->onTerminate(Z)V

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method
