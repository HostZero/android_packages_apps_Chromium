.class public Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;
.super Ljava/lang/Object;
.source "SnippetsManager.java"

# interfaces
.implements Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetListItem;


# instance fields
.field public final mPosition:I

.field public final mPreviewText:Ljava/lang/String;

.field public final mPublisher:Ljava/lang/String;

.field public final mThumbnailPath:Ljava/lang/String;

.field private mThumbnailRenderingTask:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;

.field public final mTitle:Ljava/lang/String;

.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mTitle:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mPublisher:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mPreviewText:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mUrl:Ljava/lang/String;

    .line 135
    iput-object p5, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mThumbnailPath:Ljava/lang/String;

    .line 136
    iput p6, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mPosition:I

    .line 137
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x2

    return v0
.end method

.method public setThumbnailOnView(Landroid/widget/ImageView;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mThumbnailRenderingTask:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mThumbnailRenderingTask:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;

    invoke-virtual {v0, v2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;->cancel(Z)Z

    .line 153
    :cond_0
    new-instance v0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;

    invoke-direct {v0, p1}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mThumbnailRenderingTask:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;

    .line 154
    iget-object v0, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mThumbnailRenderingTask:Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle;->mThumbnailPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/chromium/chrome/browser/ntp/snippets/SnippetsManager$SnippetArticle$ThumbnailRenderingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    return-void
.end method
