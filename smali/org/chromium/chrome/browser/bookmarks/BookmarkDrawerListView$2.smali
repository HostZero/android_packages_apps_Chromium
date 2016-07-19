.class Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;
.super Ljava/lang/Object;
.source "BookmarkDrawerListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x4

    .line 47
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->closeDrawer()V

    .line 49
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mAdapter:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$100(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;

    .line 52
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageBridge;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->getCurrentState()I

    move-result v1

    .line 54
    invoke-static {}, Lorg/chromium/chrome/browser/offlinepages/OfflinePageUtils;->isConnected()Z

    move-result v2

    .line 55
    iget v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    if-ne v3, v4, :cond_1

    if-eq v1, v5, :cond_1

    .line 57
    const-string/jumbo v1, "OfflinePages.Filter.OnlineWhenEntering"

    invoke-static {v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    .line 66
    :cond_0
    :goto_0
    iget v1, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 77
    :pswitch_0
    sget-boolean v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 59
    :cond_1
    iget v3, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mType:I

    if-eq v3, v4, :cond_0

    if-ne v1, v5, :cond_0

    .line 61
    const-string/jumbo v1, "OfflinePages.Filter.OnlineWhenLeaving"

    invoke-static {v1, v2}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    goto :goto_0

    .line 68
    :pswitch_1
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFolderId:Lorg/chromium/components/bookmarks/BookmarkId;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openFolder(Lorg/chromium/components/bookmarks/BookmarkId;)V

    .line 79
    :cond_2
    :goto_1
    return-void

    .line 71
    :pswitch_2
    iget-object v0, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openAllBookmarks()V

    goto :goto_1

    .line 74
    :pswitch_3
    iget-object v1, p0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView$2;->this$0:Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;

    # getter for: Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->mDelegate:Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;
    invoke-static {v1}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;->access$000(Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListView;)Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/chrome/browser/bookmarks/BookmarkDrawerListViewAdapter$Item;->mFilter:Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;

    invoke-interface {v1, v0}, Lorg/chromium/chrome/browser/bookmarks/BookmarkDelegate;->openFilter(Lorg/chromium/chrome/browser/bookmarks/BookmarkFilter;)V

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
