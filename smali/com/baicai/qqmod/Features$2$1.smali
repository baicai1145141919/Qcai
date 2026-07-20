.class Lcom/baicai/qqmod/Features$2$1;
.super Ljava/lang/Object;
.source "Features.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baicai/qqmod/Features$2;->afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clf:Ljava/lang/ClassLoader;

.field final synthetic val$comp:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/baicai/qqmod/Features$2;Ljava/lang/Object;Ljava/lang/ClassLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 186
    iput-object p2, p0, Lcom/baicai/qqmod/Features$2$1;->val$comp:Ljava/lang/Object;

    iput-object p3, p0, Lcom/baicai/qqmod/Features$2$1;->val$clf:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/baicai/qqmod/Features$2$1;->val$comp:Ljava/lang/Object;

    iget-object v1, p0, Lcom/baicai/qqmod/Features$2$1;->val$clf:Ljava/lang/ClassLoader;

    invoke-static {v0, v1}, Lcom/baicai/qqmod/Features;->-$$Nest$smshowVoiceForwardDialog(Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    return-void
.end method
