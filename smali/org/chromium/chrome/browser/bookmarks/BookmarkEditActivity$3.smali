.class Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$3;
.super Ljava/lang/Object;
.source "BookmarkEditActivity.java"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity$3;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;

    # invokes: Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->updateOfflineSection()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;->access$300(Lorg/chromium/chrome/browser/bookmarks/BookmarkEditActivity;)V

    .line 116
    return-void
.end method
