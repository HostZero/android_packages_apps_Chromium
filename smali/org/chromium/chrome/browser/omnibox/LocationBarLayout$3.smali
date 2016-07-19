.class Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$3;
.super Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;
.source "LocationBarLayout.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 710
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lorg/chromium/chrome/R$id;->copy_url:I

    if-ne v0, v1, :cond_0

    .line 711
    iget-object v0, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 714
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout$3;->this$0:Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;

    # getter for: Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->mOriginalUrl:Ljava/lang/String;
    invoke-static {v2}, Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;->access$1700(Lorg/chromium/chrome/browser/omnibox/LocationBarLayout;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 715
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 716
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 717
    const/4 v0, 0x1

    .line 719
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    .prologue
    .line 703
    invoke-super {p0, p1, p2}, Lorg/chromium/chrome/browser/toolbar/ToolbarActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 704
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    sget v2, Lorg/chromium/chrome/R$menu;->textselectionmenu:I

    invoke-virtual {v1, v2, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 705
    return v0
.end method
