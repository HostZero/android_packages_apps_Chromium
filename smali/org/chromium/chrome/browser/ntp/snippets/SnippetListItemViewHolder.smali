.class abstract Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;
.super Landroid/support/v7/widget/aY;
.source "SnippetListItemViewHolder.java"


# instance fields
.field private final mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v7/widget/aY;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;->mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    .line 28
    return-void
.end method


# virtual methods
.method protected loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;->mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;->loadUrl(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public abstract onBindViewHolder(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;)V
.end method
