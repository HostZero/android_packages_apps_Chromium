.class public Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver;
.super Ljava/lang/Object;
.source "PushMessagingServiceObserver.java"


# annotations
.annotation runtime Lorg/chromium/base/annotations/JNINamespace;
.end annotation


# static fields
.field private static sListener:Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver$Listener;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onMessageHandled()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 50
    sget-object v0, Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver;->sListener:Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver$Listener;

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver;->sListener:Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver$Listener;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver$Listener;->onMessageHandled()V

    .line 53
    :cond_0
    return-void
.end method

.method public static setListenerForTesting(Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver$Listener;)V
    .locals 0

    .prologue
    .line 43
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 44
    sput-object p0, Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver;->sListener:Lorg/chromium/chrome/browser/push_messaging/PushMessagingServiceObserver$Listener;

    .line 45
    return-void
.end method
