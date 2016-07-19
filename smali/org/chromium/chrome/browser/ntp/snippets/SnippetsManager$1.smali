.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$1;
.super Ljava/lang/Object;
.source "SnippetsManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/snippets/SnippetsBridge$SnippetsObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnippetsAvailable([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 166
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    const/4 v6, 0x0

    :goto_0
    array-length v0, p1

    if-ge v6, v0, :cond_0

    .line 168
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;

    aget-object v1, p1, v6

    const-string/jumbo v2, ""

    aget-object v3, p4, v6

    aget-object v4, p2, v6

    aget-object v5, p3, v6

    invoke-direct/range {v0 .. v6}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$1;->this$0:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    # getter for: Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->mDataAdapter:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->access$000(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->setSnippetListItems(Ljava/util/List;)V

    .line 173
    return-void
.end method
