.class Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "InterestsView.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

.field private final mImageCache:Landroid/util/LruCache;

.field final synthetic this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lorg/chromium/chrome/browser/ntp/interests/InterestsView;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 69
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->mImageCache:Landroid/util/LruCache;

    .line 70
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    .line 71
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    .line 75
    sget-boolean v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;
    invoke-static {v0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsView;)Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 77
    :cond_0
    invoke-virtual {p0, p1}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;

    .line 80
    instance-of v0, p2, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    if-eqz v0, :cond_1

    .line 81
    check-cast p2, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    .line 82
    invoke-virtual {p2, v2}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;->reset(Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;)V

    .line 87
    :goto_0
    return-object p2

    .line 84
    :cond_1
    new-instance v0, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;

    invoke-virtual {p0}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->this$0:Lorg/chromium/chrome/browser/ntp/interests/InterestsView;

    # getter for: Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->mListener:Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;
    invoke-static {v3}, Lorg/chromium/chrome/browser/ntp/interests/InterestsView;->access$000(Lorg/chromium/chrome/browser/ntp/interests/InterestsView;)Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->mImageCache:Landroid/util/LruCache;

    iget-object v5, p0, Lorg/chromium/chrome/browser/ntp/interests/InterestsView$InterestsListAdapter;->mDrawingData:Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView;-><init>(Landroid/content/Context;Lorg/chromium/chrome/browser/ntp/interests/InterestsService$Interest;Lorg/chromium/chrome/browser/ntp/interests/InterestsPage$InterestsClickListener;Landroid/util/LruCache;Lorg/chromium/chrome/browser/ntp/interests/InterestsItemView$DrawingData;)V

    move-object p2, v0

    goto :goto_0
.end method
