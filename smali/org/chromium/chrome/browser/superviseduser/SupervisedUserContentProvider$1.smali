.class Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;
.super Ljava/lang/Object;
.source "SupervisedUserContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

.field final synthetic val$queryReply:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    iput-object p2, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->val$queryReply:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;

    iput-object p3, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    iget-object v1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    # invokes: Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->getSupervisedUserContentProvider()J
    invoke-static {v1}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->access$000(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->val$queryReply:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;

    iget-object v4, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1, v4}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->nativeShouldProceed(JLorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/chromium/base/library_loader/ProcessInitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$1;->val$queryReply:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$SupervisedUserQueryReply;->onQueryComplete(ZLjava/lang/String;)V

    goto :goto_0
.end method
