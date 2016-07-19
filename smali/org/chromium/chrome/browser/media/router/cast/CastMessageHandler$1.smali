.class Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;
.super Ljava/lang/Object;
.source "CastMessageHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$sequenceNumber:I


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    iput-object p2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;->val$clientId:Ljava/lang/String;

    iput p3, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;->val$sequenceNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;->this$0:Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;->val$clientId:Ljava/lang/String;

    iget v2, p0, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler$1;->val$sequenceNumber:I

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/media/router/cast/CastMessageHandler;->onVolumeChanged(Ljava/lang/String;I)V

    .line 223
    return-void
.end method
