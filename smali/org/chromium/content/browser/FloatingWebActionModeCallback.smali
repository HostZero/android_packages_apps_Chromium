.class public Lorg/chromium/content/browser/FloatingWebActionModeCallback;
.super Landroid/view/ActionMode$Callback2;
.source "FloatingWebActionModeCallback.java"


# instance fields
.field private final mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/WebActionModeCallback;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;->mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;

    .line 25
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;->mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/WebActionModeCallback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p1}, Landroid/view/ActionMode;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 31
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;->mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/WebActionModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;->mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;

    invoke-virtual {v0, p1}, Lorg/chromium/content/browser/WebActionModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 47
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;->mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/content/browser/WebActionModeCallback;->onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 52
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/content/browser/FloatingWebActionModeCallback;->mWrappedCallback:Lorg/chromium/content/browser/WebActionModeCallback;

    invoke-virtual {v0, p1, p2}, Lorg/chromium/content/browser/WebActionModeCallback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
