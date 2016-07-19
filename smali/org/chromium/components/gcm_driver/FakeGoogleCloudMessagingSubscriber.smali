.class public Lorg/chromium/components/gcm_driver/FakeGoogleCloudMessagingSubscriber;
.super Ljava/lang/Object;
.source "FakeGoogleCloudMessagingSubscriber.java"

# interfaces
.implements Lorg/chromium/components/gcm_driver/GoogleCloudMessagingSubscriber;


# instance fields
.field private mLastSubscribeSource:Ljava/lang/String;

.field private mLastSubscribeSubtype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastSubscribeSource()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/FakeGoogleCloudMessagingSubscriber;->mLastSubscribeSource:Ljava/lang/String;

    return-object v0
.end method

.method public getLastSubscribeSubtype()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lorg/chromium/components/gcm_driver/FakeGoogleCloudMessagingSubscriber;->mLastSubscribeSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iput-object p1, p0, Lorg/chromium/components/gcm_driver/FakeGoogleCloudMessagingSubscriber;->mLastSubscribeSource:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lorg/chromium/components/gcm_driver/FakeGoogleCloudMessagingSubscriber;->mLastSubscribeSubtype:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "FAKE_REGISTRATION_ID"

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 35
    return-void
.end method
