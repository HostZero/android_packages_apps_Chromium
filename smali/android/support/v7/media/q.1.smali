.class final Landroid/support/v7/media/q;
.super Landroid/support/v7/media/MediaRouteProvider$Callback;
.source "MediaRouter.java"


# instance fields
.field private synthetic a:Landroid/support/v7/media/j;


# direct methods
.method private constructor <init>(Landroid/support/v7/media/j;)V
    .locals 0

    .prologue
    .line 2575
    iput-object p1, p0, Landroid/support/v7/media/q;->a:Landroid/support/v7/media/j;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/media/j;B)V
    .locals 0

    .prologue
    .line 2575
    invoke-direct {p0, p1}, Landroid/support/v7/media/q;-><init>(Landroid/support/v7/media/j;)V

    return-void
.end method


# virtual methods
.method public final onDescriptorChanged(Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V
    .locals 1

    .prologue
    .line 2579
    iget-object v0, p0, Landroid/support/v7/media/q;->a:Landroid/support/v7/media/j;

    invoke-static {v0, p1, p2}, Landroid/support/v7/media/j;->a(Landroid/support/v7/media/j;Landroid/support/v7/media/MediaRouteProvider;Landroid/support/v7/media/MediaRouteProviderDescriptor;)V

    .line 2580
    return-void
.end method
