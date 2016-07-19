.class Lorg/chromium/chrome/browser/TtsPlatformImpl$2;
.super Ljava/lang/Object;
.source "TtsPlatformImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/TtsPlatformImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    iput-object p2, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    # getter for: Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->access$500(Lorg/chromium/chrome/browser/TtsPlatformImpl;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    iget-object v1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;->this$0:Lorg/chromium/chrome/browser/TtsPlatformImpl;

    # getter for: Lorg/chromium/chrome/browser/TtsPlatformImpl;->mNativeTtsPlatformImplAndroid:J
    invoke-static {v1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->access$500(Lorg/chromium/chrome/browser/TtsPlatformImpl;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/TtsPlatformImpl$2;->val$utteranceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    # invokes: Lorg/chromium/chrome/browser/TtsPlatformImpl;->nativeOnEndEvent(JI)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/chrome/browser/TtsPlatformImpl;->access$600(Lorg/chromium/chrome/browser/TtsPlatformImpl;JI)V

    .line 206
    :cond_0
    return-void
.end method
