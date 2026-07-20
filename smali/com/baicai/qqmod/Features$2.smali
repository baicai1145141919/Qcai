.class Lcom/baicai/qqmod/Features$2;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "Features.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baicai/qqmod/Features;->voiceForward(Ljava/lang/ClassLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cl:Ljava/lang/ClassLoader;

.field final synthetic val$hookedMethod:Ljava/lang/reflect/Method;

.field final synthetic val$pttCls:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/baicai/qqmod/Features$2;->val$pttCls:Ljava/lang/Class;

    iput-object p2, p0, Lcom/baicai/qqmod/Features$2;->val$hookedMethod:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/baicai/qqmod/Features$2;->val$cl:Ljava/lang/ClassLoader;

    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 5

    .line 178
    :try_start_0
    invoke-static {}, Lcom/baicai/qqmod/Config;->isVoiceForwardEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/baicai/qqmod/Features$2;->val$pttCls:Ljava/lang/Class;

    iget-object v1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/baicai/qqmod/Features$2;->val$hookedMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[VOICE-FWD] FIRED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (\u5177\u4f53\u83dc\u5355\u91cd\u5199, \u547d\u4e2d\u8bed\u97f3\u7ec4\u4ef6)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 182
    iget-object p1, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->thisObject:Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lcom/baicai/qqmod/Features$2;->val$cl:Ljava/lang/ClassLoader;

    .line 185
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    new-instance v2, Lcom/baicai/qqmod/Features$2$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/baicai/qqmod/Features$2$1;-><init>(Lcom/baicai/qqmod/Features$2;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[VOICE-FWD] err: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/baicai/qqmod/H;->log(Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void
.end method
