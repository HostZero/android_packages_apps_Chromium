.class Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$3;
.super Ljava/lang/Object;
.source "SupervisedUserContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$3;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$3;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    iget-object v1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$3;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    # invokes: Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getSupervisedUserContentProvider()J
    invoke-static {v1}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->access$000(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)J

    move-result-wide v2

    # invokes: Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->nativeSetFilterForTesting(J)V
    invoke-static {v0, v2, v3}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->access$100(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;J)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
