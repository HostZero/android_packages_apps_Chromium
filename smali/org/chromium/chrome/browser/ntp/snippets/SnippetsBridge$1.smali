.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;
.super Ljava/lang/Object;
.source "SnippetsBridge.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

.field final synthetic val$observer:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;->val$observer:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnippetsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;

    # getter for: Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->mNativeSnippetsBridge:J
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;->access$000(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$1;->val$observer:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;->onSnippetsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
