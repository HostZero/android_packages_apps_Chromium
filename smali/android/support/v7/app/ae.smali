.class public final Landroid/support/v7/app/ae;
.super Landroid/app/Dialog;
.source "MediaRouteChooserDialog.java"


# instance fields
.field private final a:Landroid/support/v7/media/MediaRouter;

.field private final b:Landroid/support/v7/app/af;

.field private c:Landroid/support/v7/media/e;

.field private d:Ljava/util/ArrayList;

.field private e:Landroid/support/v7/app/ag;

.field private f:Landroid/widget/ListView;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/app/ae;-><init>(Landroid/content/Context;I)V

    .line 82
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-static {p1}, Landroid/support/v7/app/c;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 74
    sget-object v0, Landroid/support/v7/media/e;->a:Landroid/support/v7/media/e;

    iput-object v0, p0, Landroid/support/v7/app/ae;->c:Landroid/support/v7/media/e;

    .line 86
    invoke-virtual {p0}, Landroid/support/v7/app/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/support/v7/media/MediaRouter;->a(Landroid/content/Context;)Landroid/support/v7/media/MediaRouter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/media/MediaRouter;

    .line 89
    new-instance v0, Landroid/support/v7/app/af;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/af;-><init>(Landroid/support/v7/app/ae;B)V

    iput-object v0, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/af;

    .line 90
    return-void
.end method

.method static synthetic a(Landroid/support/v7/media/MediaRouter$RouteInfo;)Z
    .locals 2

    .prologue
    .line 65
    .line 1443
    invoke-virtual {p0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->x()Landroid/support/v7/media/MediaRouteProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->getMetadata()Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1437
    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.media.intent.category.LIVE_AUDIO"

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.media.intent.category.LIVE_VIDEO"

    invoke-virtual {p0, v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 65
    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 3

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/support/v7/app/ae;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/app/c;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 180
    return-void
.end method

.method public final a(Landroid/support/v7/media/e;)V
    .locals 3

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "selector must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ae;->c:Landroid/support/v7/media/e;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 113
    iput-object p1, p0, Landroid/support/v7/app/ae;->c:Landroid/support/v7/media/e;

    .line 115
    iget-boolean v0, p0, Landroid/support/v7/app/ae;->g:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/af;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 117
    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/af;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ae;->b()V

    .line 123
    :cond_2
    return-void
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 203
    iget-boolean v0, p0, Landroid/support/v7/app/ae;->g:Z

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 205
    iget-object v0, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    invoke-static {}, Landroid/support/v7/media/MediaRouter;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object v2, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    .line 1135
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 1136
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/media/MediaRouter$RouteInfo;

    .line 1154
    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->l()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouter$RouteInfo;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/support/v7/app/ae;->c:Landroid/support/v7/media/e;

    invoke-virtual {v0, v3}, Landroid/support/v7/media/MediaRouter$RouteInfo;->a(Landroid/support/v7/media/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1136
    :goto_1
    if-nez v0, :cond_3

    .line 1137
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    goto :goto_0

    .line 1154
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/app/ae;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v7/app/ah;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    sget-object v1, Landroid/support/v7/app/ah;->a:Landroid/support/v7/app/ah;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 209
    iget-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/support/v7/app/ag;

    invoke-virtual {v0}, Landroid/support/v7/app/ag;->notifyDataSetChanged()V

    .line 211
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 184
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 186
    iput-boolean v3, p0, Landroid/support/v7/app/ae;->g:Z

    .line 187
    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ae;->c:Landroid/support/v7/media/e;

    iget-object v2, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/af;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/e;Landroid/support/v7/media/g;I)V

    .line 188
    invoke-virtual {p0}, Landroid/support/v7/app/ae;->b()V

    .line 189
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 161
    sget v0, Landroid/support/v7/mediarouter/R$layout;->mr_chooser_dialog:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ae;->setContentView(I)V

    .line 162
    sget v0, Landroid/support/v7/mediarouter/R$string;->mr_chooser_title:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ae;->setTitle(I)V

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Landroid/support/v7/app/ag;

    invoke-virtual {p0}, Landroid/support/v7/app/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/app/ae;->d:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v7/app/ag;-><init>(Landroid/support/v7/app/ae;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v7/app/ae;->e:Landroid/support/v7/app/ag;

    .line 166
    sget v0, Landroid/support/v7/mediarouter/R$id;->mr_chooser_list:I

    invoke-virtual {p0, v0}, Landroid/support/v7/app/ae;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Landroid/support/v7/app/ae;->f:Landroid/widget/ListView;

    .line 167
    iget-object v0, p0, Landroid/support/v7/app/ae;->f:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v7/app/ae;->e:Landroid/support/v7/app/ag;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object v0, p0, Landroid/support/v7/app/ae;->f:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v7/app/ae;->e:Landroid/support/v7/app/ag;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 169
    iget-object v0, p0, Landroid/support/v7/app/ae;->f:Landroid/widget/ListView;

    const v1, 0x1020004

    invoke-virtual {p0, v1}, Landroid/support/v7/app/ae;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v7/app/ae;->a()V

    .line 172
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/ae;->g:Z

    .line 194
    iget-object v0, p0, Landroid/support/v7/app/ae;->a:Landroid/support/v7/media/MediaRouter;

    iget-object v1, p0, Landroid/support/v7/app/ae;->b:Landroid/support/v7/app/af;

    invoke-virtual {v0, v1}, Landroid/support/v7/media/MediaRouter;->a(Landroid/support/v7/media/g;)V

    .line 196
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 197
    return-void
.end method
