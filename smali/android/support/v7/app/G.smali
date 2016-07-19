.class final Landroid/support/v7/app/G;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"

# interfaces
.implements Landroid/support/v7/app/e;


# instance fields
.field private synthetic a:Landroid/support/v7/app/F;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/F;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Landroid/support/v7/app/G;->a:Landroid/support/v7/app/F;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/F;B)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0, p1}, Landroid/support/v7/app/G;-><init>(Landroid/support/v7/app/F;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    .line 1149
    iget-object v0, p0, Landroid/support/v7/app/G;->a:Landroid/support/v7/app/F;

    invoke-virtual {v0}, Landroid/support/v7/app/F;->l()Landroid/content/Context;

    move-result-object v0

    .line 140
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x7f010092

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/N;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/internal/widget/N;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/N;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/N;->a()V

    .line 144
    return-object v1
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/support/v7/app/G;->a:Landroid/support/v7/app/F;

    invoke-virtual {v0}, Landroid/support/v7/app/F;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Landroid/support/v7/app/G;->a:Landroid/support/v7/app/F;

    invoke-virtual {v0}, Landroid/support/v7/app/F;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->a(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->b(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Landroid/support/v7/app/G;->a:Landroid/support/v7/app/F;

    invoke-virtual {v0}, Landroid/support/v7/app/F;->l()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/app/G;->a:Landroid/support/v7/app/F;

    invoke-virtual {v0}, Landroid/support/v7/app/F;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->a()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
