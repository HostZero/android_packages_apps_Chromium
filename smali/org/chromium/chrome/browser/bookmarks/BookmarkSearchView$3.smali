.class Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$3;
.super Ljava/lang/Object;
.source "BookmarkSearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->resetUI()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->sendSearchQuery()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkSearchView;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 155
    return-void
.end method
