.class Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;
.super Landroid/support/v7/widget/aG;
.source "SnippetsAdapter.java"


# instance fields
.field private final mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

.field private mSnippetListItems:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v7/widget/aG;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    .line 29
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mSnippetListItems:Ljava/util/List;

    .line 30
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mSnippetListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mSnippetListItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;

    invoke-interface {v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;->getType()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/aY;I)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->onBindViewHolder(Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;I)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mSnippetListItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;

    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;->onBindViewHolder(Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;)V

    .line 65
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/aY;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/chromium/chrome/browser/ntp/snippets/SnippetListItemViewHolder;
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 50
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetHeaderItemViewHolder;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    .line 59
    :goto_0
    return-object v0

    .line 54
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 55
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;

    invoke-static {p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mManager:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;

    invoke-direct {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetCardItemViewHolder;-><init>(Landroid/view/View;Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager;)V

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSnippetListItems(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->mSnippetListItems:Ljava/util/List;

    .line 39
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method
